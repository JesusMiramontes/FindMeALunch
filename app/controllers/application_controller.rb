class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    def show
    	render template: "application/#{params[:page]}"
  	end
end
