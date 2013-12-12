class SheltersController < ApplicationController

  def index
    @shelters = Shelter.all
  end

  def show
    @shelter = Shelter.find_by(:id => params[:id])
      @hash = Gmaps4rails.build_markers(@shelter) do |shelter, marker|
      marker.lat shelter.latitude
      marker.lng shelter.longitude
    end

    @occupants = Occupant.where(shelter_id: @shelter.id)

  end



  def new
  end

  def create
    @shelter = Shelter.new
    @shelter.name = params[:name]
    @shelter.street_address = params[:street_address]
    # @shelter.city = params[:city]
    # @shelter.state = params[:state]
    # @shelter.zip = params[:zip]
    @shelter.phone_number = params[:phone_number]
    @shelter.website = params[:website]
    @shelter.total_beds = params[:total_beds]
    @shelter.open_beds = params[:total_beds]
    @shelter.password = params[:password]
    @shelter.password_confirmation = params[:password_confirmation]
    @shelter.email = params[:email]

    if @shelter.save
      session[:shelter_id] = @shelter.id
      redirect_to shelter_url(@shelter.id)
    else
      flash.now[:error] = @shelter.errors.full_messages
      render 'new'
    end
  end

  def edit
    @shelter = Shelter.find_by(:id => params[:id])
  end

  def update
    @shelter = Shelter.find_by(:id => params[:id])
    @shelter.name = params[:name]
    @shelter.street_address = params[:street_address]
    # @shelter.city = params[:city]
    # @shelter.state = params[:state]
    # @shelter.zip = params[:zip]
    @shelter.website = params[:website]
    @shelter.phone_number = params[:phone_number]
    @shelter.total_beds = params[:total_beds]
    @shelter.open_beds = params[:open_beds]

    if @shelter.save

      redirect_to shelters_url
    else
      render 'new'
    end
  end

  def destroy
    @shelter = Shelter.find_by(:id => params[:id])
      if @shelter.destroy
        occupants = Occupant.where(shelter_id: @shelter.id)
          occupants.each do |occupant|
          occupant.destroy
          end
      end
    redirect_to shelters_url
  end
end
