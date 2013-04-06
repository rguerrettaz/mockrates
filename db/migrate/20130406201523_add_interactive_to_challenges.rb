class AddInteractiveToChallenges < ActiveRecord::Migration
  def change
    add_column :challenges, :interactive, :boolean, default: false
  end
end
