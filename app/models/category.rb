class Category < ActiveRecord::Base
  has_many :races, dependent: :restrict_with_exception
end
