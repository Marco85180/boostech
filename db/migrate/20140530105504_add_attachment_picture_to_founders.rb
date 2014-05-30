class AddAttachmentPictureToFounders < ActiveRecord::Migration
  def self.up
    change_table :founders do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :founders, :picture
  end
end
