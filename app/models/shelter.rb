class Shelter < ActiveRecord::Base

  has_secure_password
  has_many :occupants

  validates_presence_of :name, :email

end
