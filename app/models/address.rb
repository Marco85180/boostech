class Address < ActiveRecord::Base
  belongs_to :company

  geocoded_by :street
  after_validation :geocode, :if => :street_changed?
end
