class CreateCompanyPeople < ActiveRecord::Migration
  def change
    create_table :company_people do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :picture
      t.references :company, index: true

      t.timestamps
    end
  end
end
