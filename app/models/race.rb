class Race < ActiveRecord::Base
  belongs_to :category
  has_many :runs, dependent: :restrict_with_exception

  def label
    name || category.code 
  end
  def label_desc
    description || name || category.description || category.name
  end
end
