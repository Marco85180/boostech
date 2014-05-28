class RemoveFieldNameFromTableName < ActiveRecord::Migration
  def change
    remove_column :companies, :hq_address_id, :billing_address_id
  end
end
