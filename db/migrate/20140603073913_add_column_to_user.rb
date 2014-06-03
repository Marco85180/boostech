class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :biography, :text
    add_column :users, :city, :string
    add_column :users, :region, :string
    add_column :users, :street, :string
    add_column :users, :country, :string
    add_column :users, :zipcode, :integer
    add_column :users, :picture, :string
  end
end
