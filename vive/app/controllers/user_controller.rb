class UserController < ApplicationController
	def create_or_login_user
		auth = env['omniauth.auth']
		token = auth.uid
		user = User.find_by_token(token)
		unless user.present?
			user = User.new
			user.token = token
			user.name = auth.info.name
			user.save
		end

		session[:id] = user.id
		redirect_to :controller => "main", :action => "index"
	end
end
