class LoginController < ApplicationController
  layout "pre_login"
  before_action :check_not_login

  def index
  end

  private
  
	  def check_not_login
	  	if session[:id].present?
	  		redirect_to root_url
	  	end
	  end
end
