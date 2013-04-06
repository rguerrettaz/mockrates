class Week < ActiveRecord::Base
  attr_accessible :week_number
  
  belongs_to :phase
  has_many :challenges
end
