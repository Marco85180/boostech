class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :company, index: true
      t.attachment :file

      t.timestamps
    end
  end
end
