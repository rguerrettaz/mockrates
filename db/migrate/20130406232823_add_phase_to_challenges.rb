class AddPhaseToChallenges < ActiveRecord::Migration
  def change
    add_column :challenges, :phase_id, :integer
  end
end
