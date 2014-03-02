class SessionController < ApplicationController

def new

end

def create
	user=User.find_by(:login => params[:login])
	if user.present?
		if user.pwd == params[:pwd]
			session[:id] = user.id
			redirect_to root_url, notice: "login successful"
		else
			redirect_to root_url, notice: "incorrect password"
		end
	else
		redirect_to root_url, notice: "user not found"
	end

end

def destroy
	reset_session
	redirect_to root_url, notice: "logout successful"
end

end
