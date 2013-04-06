class Spec < ActiveRecord::Base
  attr_accessible :challenge_id, :content
  belongs_to :challenge
end
