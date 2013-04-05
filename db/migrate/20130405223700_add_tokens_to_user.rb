class AddTokensToUser < ActiveRecord::Migration
  def change
    add_column :users, :oauth_token, :string
    add_column :users, :uid, :string
    add_index :users, :oauth_token
    add_index :users, :uid
  end
end
