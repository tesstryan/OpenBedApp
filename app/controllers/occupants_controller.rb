class OccupantsController < ApplicationController

  def index
    @occupants = Occupant.all
  end

  def show
    @occupant = Occupant.find_by(:id => params[:id])
  end

  def new
  end

  def create
    @occupant = Occupant.new
    @occupant.name = params[:name]
    @occupant.sex = params[:sex]
    @occupant.number_of_beds = params[:number_of_beds]
    @occupant.shelter_id = params[:shelter_id]

    if @occupant.save
      @shelter = Shelter.find_by_id(params[:shelter_id])
      @shelter.open_beds = @shelter.open_beds - @occupant.number_of_beds
      @shelter.save
      redirect_to shelter_url(@shelter.id)
    else
      render 'new'
    end
  end

  def edit
    @occupant = Occupant.find_by(:id => params[:id])
  end

# NEED TO FIX UPDATING BED NUMBERS
  def update
    @occupant = Occupant.find_by(:id => params[:id])
    @occupant.name = params[:name]
    @occupant.sex = params[:sex]
    @occupant.number_of_beds = params[:number_of_beds]
    @occupant.shelter_id = params[:shelter_id]

    if @occupant.save
      @shelter = Shelter.find_by_id(params[:shelter_id])
      @shelter.open_beds = @shelter.open_beds - @occupant.number_of_beds
      @shelter.save
      redirect_to shelter_url(@shelter.id)
    else
      render 'new'
    end
  end

  def destroy
      @occupant = Occupant.find_by(:id => params[:id])
      if @occupant.destroy
           @shelter = Shelter.find_by_id(@occupant.shelter_id)
           @shelter.open_beds = @shelter.open_beds + @occupant.number_of_beds
           @shelter.save
      redirect_to shelter_url(@shelter)
    end

  end
end
