class CreatePhases < ActiveRecord::Migration
  def change
    create_table :phases do |t|
      t.string :name
      t.references :week
      t.references :phase
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
