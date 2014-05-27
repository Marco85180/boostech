class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :siren
      t.text :description
      t.integer :hq_address_id
      t.integer :billing_address_id

      t.timestamps
    end
  end
end
