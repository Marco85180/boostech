class ChangeZipCodeType < ActiveRecord::Migration
  def change
    change_column :addresses, :zipcode, :string
    change_column :users, :zipcode, :string
  end
end
