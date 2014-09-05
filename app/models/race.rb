class Race < ActiveRecord::Base
  belongs_to :category
  has_many :runs, dependent: :restrict_with_exception

  # status field can be any of:
  #  :not_started
  #  :ongoing
  #  :completed
  #  :closed     - this means final official results are there

  def label
    name || category.code 
  end
  def label_desc
    description || name || category.description || category.name
  end
  # this retrns the run object that was fastest on some spot.
  # for :start it gives the first one to start
  def fastest_on_spot(spot)
    runs.min_by do |run| 
      if (spot == :start_timestamp)
        if (a = run.timestamp(spot)).nil?
          Time.new(Float::MAX)
        else
          a
        end
      else
        if (b =run.elapsed_time spot).nil?
          Float::MAX
        else
          b
        end
      end
    end
  end

  def all_timestamps
    list = [:start_timestamp]
    (intermediate_points||"").split.each { |spot| list << "#{spot}_timestamp".to_sym }
    list << :finish_timestamp << :final
    list
  end

  def latest_timestamp
    all_timestamps.reverse.each do |spot|
      runs.each do |run|
        if not run.timestamp(spot).nil?
          return spot
        end       
      end
    end
    :number
  end
end
