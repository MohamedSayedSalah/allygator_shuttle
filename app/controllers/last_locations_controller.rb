class LastLocationsController < ApplicationController
  protect_from_forgery with: :null_session
  def destroy
    LastLocation.reset_last_location
  end

end


