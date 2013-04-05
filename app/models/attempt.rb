class Attempt < ActiveRecord::Base
  belongs_to :user
  belongs_to :challenge
  attr_accessible :github_url, :user_id, :challenge_id, :status
end
