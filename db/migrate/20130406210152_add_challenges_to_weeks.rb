class AddChallengesToWeeks < ActiveRecord::Migration
  def change
    add_column :weeks, :challenge_id, :integer
  end
end
