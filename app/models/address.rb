class Address < ActiveRecord::Base
  belongs_to :company

  geocoded_by :full_address
  after_validation :geocode, :if => :changed?

  def full_address
    "#{street}, #{zipcode} #{city}, #{region}, #{country}"
  end

end
