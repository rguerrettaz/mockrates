class Challenge < ActiveRecord::Base
  attr_accessible :content, :title, :interactive, :specs_attributes
  has_many :attempts
  has_many :users, :through => :attempts
  has_many :specs
  accepts_nested_attributes_for :specs
end
