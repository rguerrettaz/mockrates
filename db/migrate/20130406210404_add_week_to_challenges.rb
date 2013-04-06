class AddWeekToChallenges < ActiveRecord::Migration
  def change
    add_column :challenges, :week_id, :integer
  end
end
