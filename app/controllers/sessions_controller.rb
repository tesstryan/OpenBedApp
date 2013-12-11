class SessionsController < ApplicationController

def new

end

def create
  shelter = Shelter.find_by_email(params[:email])
  if shelter.present? && shelter.authenticate(params[:password])
    session[:shelter_id] = shelter.id

    redirect_to shelter_url(shelter.id)
  else
    redirect_to new_session_url, notice: "Email/Password are incorrect. Please try again."
  end
end

def destroy
  reset_session
  redirect_to root_url
end

end
