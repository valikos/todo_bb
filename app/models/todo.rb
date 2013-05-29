class Todo < ActiveRecord::Base
  attr_accessible :done, :title

  validates :title, :presence => true
end
