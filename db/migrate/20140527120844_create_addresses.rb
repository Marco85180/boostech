class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :region
      t.string :street
      t.string :country
      t.integer :zipcode
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
