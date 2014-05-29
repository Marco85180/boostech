class DropPictureTable < ActiveRecord::Migration
  def self.up
    drop_table :pictures
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end