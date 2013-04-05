class CreateChallengesUsers < ActiveRecord::Migration
  def change
    create_table :challenges_users do |t|
      t.references :user
      t.references :challenge
      t.string :github_url

      t.timestamps
    end
    add_index :challenge_users, :user_id
    add_index :challenge_users, :challenge_id
  end
end
