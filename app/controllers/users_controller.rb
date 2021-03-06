class UsersController < ApplicationController
 
 	def create
	   	@user = User.new(user_params)    # Not the final implementation!
	    if @user.save
	    redirect_to @user
	    flash[:success] = "Welcome back!"
	      # Handle a successful save.
	    else
	      render 'new'
	    end
  	end

private

	def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

  	def new
    	@user = User.new
    end


	def show
		@user = User.find(params[:id])
	end
end
