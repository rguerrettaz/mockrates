class Week < ActiveRecord::Base
  attr_accessible :name, :phase_id
  belongs_to :phase
  has_many :challenges
end
