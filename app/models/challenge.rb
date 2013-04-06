class Challenge < ActiveRecord::Base
  attr_accessible :content, :title
  has_many :attempts
  has_many :users, :through => :attempts
  belongs_to :week
end
