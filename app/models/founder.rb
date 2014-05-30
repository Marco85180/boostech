class Founder < ActiveRecord::Base
  belongs_to :company

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :picture,
    :content_type => /\Aimage\/.*\Z/
end
