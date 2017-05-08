class SessionsController < ApplicationController

	def create
		@user = User.find_by(username: params[:username])
		if(@user && @user.authenticate(params[:password]))
			session[:user] = @user
			if @user.admin
				redirect_to adminpanel_path
			else
				redirect_to profile_path
			end
		else
			redirect_to login_path
		end
	end

	def new_session
		
	end

	def destroy
		session[:user] = nil
		redirect_to root_path
	end

end
