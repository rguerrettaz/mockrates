class Phase < ActiveRecord::Base
  attr_accessible :name, :start_date
  belongs_to :cohort
  has_many :weeks
end
