class Phase < ActiveRecord::Base
  attr_accessible :phase_number, :start_date
  belongs_to :cohort
  has_many :weeks
  has_many :challenges
end
