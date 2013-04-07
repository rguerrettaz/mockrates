class AddChallengesToPhase < ActiveRecord::Migration
  def change
    add_column :phases, :challenge_id, :integer
  end
end
