class CreateSpecs < ActiveRecord::Migration
  def change
    create_table :specs do |t|
      t.string :content
      t.integer :challenge_id

      t.timestamps
    end
  end
end
