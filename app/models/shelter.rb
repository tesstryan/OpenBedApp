class Shelter < ActiveRecord::Base


  has_secure_password
  has_many :occupants

  validates_presence_of :name, :email, :street_address

  # LATITUDE AND LONGITUDE CODE (FROM JACK)

  require 'open-uri'
  require 'json'


  def return_latlong(street_address)

    google_maps_url = URI.encode("http://maps.googleapis.com/maps/api/geocode/json?address=#{street_address}&sensor=false")
    string_data = open(google_maps_url).read
    data = JSON.parse(string_data)

    latitude = data['results'].first['geometry']['location']['lat']
    longitude = data['results'].first['geometry']['location']['lng']

    shelter_coordinates = [latitude, longitude]


    # google_maps_url = URI.encode("http://maps.googleapis.com/maps/api/geocode/json?address=#{self.destination}&sensor=false")
    # string_data = open(google_maps_url).read
    # data = JSON.parse(string_data)

    # latitude = data['results'].first['geometry']['location']['lat']
    # longitude = data['results'].first['geometry']['location']['lng']

    # destination_coordinates = [latitude, longitude]

  end

end
