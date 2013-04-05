class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.references :user
      t.references :challenge
      t.string :github_url

      t.timestamps
    end
    add_index :attempts, :user_id
    add_index :attempts, :challenge_id
  end
end
