class Company < ActiveRecord::Base
  has_many :addresses
  has_many :company_persons



end
