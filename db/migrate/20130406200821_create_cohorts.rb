class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :name
      t.references :user
      t.datetime :start_date
      t.string :picture

      t.timestamps
    end
    add_index :cohorts, :user_id
  end


end
