class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

    def show
    	render template: "application/#{params[:page]}"
    	@combos = Combo.all
  		@products = Product.all
  	end

  	def index
  		@products = Product.all
  		@combos = Combo.all
  	end

  	def recomendacion
  		@combos = Combo.all
  		@products = Product.all

  	end
end
