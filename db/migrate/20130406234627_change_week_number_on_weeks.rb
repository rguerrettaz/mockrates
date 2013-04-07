class ChangeWeekNumberOnWeeks < ActiveRecord::Migration
  def change
    remove_column :weeks, :week_number
    add_column :weeks, :name, :string 
  end
end
