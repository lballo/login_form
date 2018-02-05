class SessionsController < ApplicationController
  
  def new
    render 'new'
  end

  def create
  	user = User.find_by(email: params[:email])

  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id

  		flash[:success] = "Welcome to your profile"

  		redirect_to root_path
  	else
  		flash.now[:danger] = "We could not find your email or password in our database, please try again"
  		render "new"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	flash[:success] = "Thank you for your visit"
  	redirect_to root_path
  end 

end

