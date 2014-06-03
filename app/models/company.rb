class Company < ActiveRecord::Base
  has_many :addresses
  has_many :founders
  has_many :campaigns
  has_and_belongs_to_many :users

  has_attached_file :banner, styles: { large: "2000x300>",
                                       medium: "300x300>",
                                       thumb: "100x100>" }
  validates_attachment_content_type :banner, :content_type => /\Aimage\/.*\Z/

  has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
end
