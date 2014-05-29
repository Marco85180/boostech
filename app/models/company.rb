class Company < ActiveRecord::Base
  has_many :pictures
  has_many :addresses

end
