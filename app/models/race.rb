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
  def runs_by_number
    runs.sort { |l,r| l.number <=> r.number }
  end
  def runs_by_time(spot)
    runs.sort { |l,r| compare(l,r,spot) }
  end 
  # This one sorts the runs, but decides on its own by which parameter:
  #   - if the race is 'not_started', it sorts by number
  #   - if the race is 'completed', sorts by finnish_timestamp
  #   - if the race is 'closed', it sorts by final
  #   - if the race is 'ongoing', it looks for the latest timestamp that somebody has,
  #     and sorts baed on that.
  # In all cases, if verdict is not null, it should sort by verdict first.
  def runs_sorted
    case status.to_sym
      when :not_started then runs_by_number
      when :completed then runs_by_time(:finish_timestamp)
      when :closed then runs_by_time(:final)
      when :ongoing then runs_by_time(latest_timestamp)
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

  private

  def nilcomp(l,r)
    if l.nil?
      if r.nil?
        0
      else
        1
      end
    else
      if r.nil?
        -1
      else
        l <=> r
      end
    end
  end

  def compare(l,r,criteria)
    if criteria == :number
      l.number <=> r.number
    else
      nilcomp(l.verdict,r.verdict) | nilcomp(l.elapsed_time(criteria),r.elapsed_time(criteria))
    end
  end
end
