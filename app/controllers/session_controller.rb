class SessionController < ApplicationController
	skip_before_action :verify_authenticity_token

	def login
		if cookies[:user_id]
			render json:User.find(cookies[:user_id])
		end
	end
	def login_post
		@user = User.find_by(username:params[:username],password:params[:password])

		unless @user.nil?
			cookies[:user_id] = {value:@user.id,expire:1.hour.from_now}
		end
		redirect_to login_path
	end

	def loyout
		cookies.delete(:user_id)
		redirect_to login_path
	end
end
