class Admin::AdminApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout 'admin_application'

  def current_user 
  	return session[:user]
  end

  def authorize 
  	if current_user == nil
  	  	redirect_to root_path
  	end
  end
  
end
