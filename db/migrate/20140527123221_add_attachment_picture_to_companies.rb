class AddAttachmentPictureToCompanies < ActiveRecord::Migration
  def self.up
    change_table :companies do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :companies, :picture
  end
end
