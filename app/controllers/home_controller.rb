class HomeController < ApplicationController
	def index
		render json:Sinif.all
	end
end
