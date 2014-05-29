class RemoveColumnFromTableCompanies < ActiveRecord::Migration
  def self.up
    remove_column :companies, :picture_file_name
    remove_column :companies, :picture_content_type
    remove_column :companies, :picture_file_size
    remove_column :companies, :picture_updated_at
    remove_column :companies, :picture
    remove_column :companies, :billing_address_id
  end

  def self.down
    add_column :companies, :banner, :string
  end
end
