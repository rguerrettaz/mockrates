class InteractiveAttempts < ActiveRecord::Migration
  def change
   create_table "interactive_attempts" do |t|
      t.integer  "user_id"
      t.integer  "challenge_id"
      t.text     "code"

      t.timestamps
    end
  end 
end
