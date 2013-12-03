class Shelter < ActiveRecord::Base

  has_secure_password
  has_many :occupants

end
