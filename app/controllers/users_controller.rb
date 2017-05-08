class UsersController < ApplicationController
  
    before_action(:authorize, except: [:signup, :create, :index])

  def index
    if current_user
      @songs = Audio.all.order(like: :DESC)
      # byebug
    end
  end

  def signup
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
    if(@user.save)
  		session[:user] = @user
      redirect_to profile_path
  	else
  		redirect_to signup_path
	end
  end

  def show
  	@user = User.new(session[:user])
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :profile_picture, :name)
  end

end
