class UserController < ApplicationController
	skip_before_action :verify_authenticity_token
	def new
		if cookies[:user_id].nil? || User.find(cookies[:user_id]).superuser == false
			redirect_to login_path
		end
	end
	def create
		@user = User.new(username:params[:username],password:params[:password],superuser:[:superuser])

		if @user.save
			render json:{message:"Done"}
		else
			render json:{error:{message:"User create error",value:@user.errors[:message]}}
		end
	end
	def destroy

	end
end
