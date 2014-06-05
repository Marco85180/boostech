class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :name, :string
    add_column :users, :token, :string
    add_column :users, :token_expiry, :datetime
    add_column :users, :fb_token, :string
    add_column :users, :fb_token_expiry, :datetime
  end
end
