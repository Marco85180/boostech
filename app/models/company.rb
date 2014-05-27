class Company < ActiveRecord::Base
  belongs_to :hq_address, class: 'Address'
  belongs_to :billing_address, class: 'Address'
  has_many :pictures
end
