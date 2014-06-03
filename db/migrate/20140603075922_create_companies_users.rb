class CreateCompaniesUsers < ActiveRecord::Migration
  def change
    create_table :companies_users do |t|
      t.references :companies
      t.references :user
    end
  end
end
