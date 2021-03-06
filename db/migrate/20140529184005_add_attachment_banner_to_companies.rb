class AddAttachmentBannerToCompanies < ActiveRecord::Migration
  def self.up
    change_table :companies do |t|
      t.attachment :banner
    end
  end

  def self.down
    drop_attached_file :companies, :banner
  end
end
