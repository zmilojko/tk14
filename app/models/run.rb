class Run < ActiveRecord::Base
  belongs_to :race
  belongs_to :user
end
