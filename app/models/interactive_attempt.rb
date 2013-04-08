class InteractiveAttempt < ActiveRecord::Base
  attr_accessible :challenge_id, :code, :user_id

  belongs_to :challenge
  belongs_to :user


end
