class MetotController < ApplicationController
	skip_before_action :verify_authenticity_token
	def edit
		@metot = Metot.find(params[:id])
		render json:@metot
	end
	def new
	end
	def create
		@metot = Metot.new(name:params[:name],desc:params[:desc],example:params[:example])
		@metot.sinif = Sinif.find_or_create_by(name:params[:sinif])

		if @metot.save
			render json:@metot
		else
			render json:{message:"Hata oluştu",hata:@metot.errors.full_messages.to_a}
		end
	end
	def destroy
		@metot = Metot.find(params[:id])
		@metot.destroy
	end
	def find_sinif
		@sinif = Sinif.find_by(name:params[:name].capitalize)
		if @sinif
			render json:@sinif.metots
		else
			render json:{message:"Sınıf bulunamadı !"}
		end
	end
end
