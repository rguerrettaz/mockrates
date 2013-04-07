class ChangeNameOnPhases < ActiveRecord::Migration
  def change
    remove_column :phases, :name
    add_column :phases, :phase_number, :string 
  end
end
