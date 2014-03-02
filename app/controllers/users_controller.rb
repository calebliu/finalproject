class UsersController < ApplicationController

def new
end

def create
user=User.new
user.first_name=params[:first_name]
user.last_name=params[:last_name]
user.login=params[:login]
user.pwd=params[:pwd]
user.income=params[:income]
user.net_worth=params[:net]
user.save

redirect_to "users#show", notice:"new user created"

end

def show
end

end
