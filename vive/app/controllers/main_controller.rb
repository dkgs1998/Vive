class MainController < ApplicationController
  before_action :check_login
  before_action :set_user

  def index
    @student_lessons = @user.student_classes
  end

  def profile
  end

  private
    def check_login
	  	unless session[:id].present?
	  		redirect_to :controller => "login", :action => "index"
	  	end
  	end

  	def set_user
  		@user = User.find(session[:id])
  	end
end