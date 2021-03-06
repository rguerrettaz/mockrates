module AttemptsHelper

  def all_attempts
    @all_attempts = Attempt.all + InteractiveAttempt.all 
  end

  def get_challenge(attempt)
    Challenge.find(attempt.challenge_id)
  end

  def get_github(attempt)
    attempt.class == Attempt ? (link_to ": #{attempt.github_url}", attempt.github_url) : nil
  end

  def everything
  	everything = Attempt.all + InteractiveAttempt.all + Post.all + Question.all
    everything.sort_by { |e| e.created_at }.reverse
  end
end
