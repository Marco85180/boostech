class AddBannerAndLogoToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :picture, :string
    add_column :companies, :logo, :string
  end
end
