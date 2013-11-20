class SessionsController < ApplicationController

def new

end

def create
  shelter_admin = ShelterAdmin.find_by_email(params[:email])
  if shelter_admin.present? && shelter_admin.authenticate(params[:password])
    session[:shelter_admin_id] = shelter_admin.id
    redirect_to shelters_url
  else
    redirect_to new_session_url, notice: "Email/Password are incorrect. Please try again."
  end
end

def destroy
  reset_session
  redirect_to new_session_url
end

end
