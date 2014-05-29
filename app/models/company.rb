class Company < ActiveRecord::Base
  has_many :pictures
  has_one :address
end
