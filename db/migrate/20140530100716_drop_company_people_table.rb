class DropCompanyPeopleTable < ActiveRecord::Migration
  def up
    drop_table :company_people
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
