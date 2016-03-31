class LoginsController < ApplicationController
	def new
		render :new
	end

	def create
		@user = User.find_by(username: params["username"],
							password: params["password"])
		if @user
			session[:user_id] = @user.id
			flash[:notice] = "Logged in!"
			redirect_to :root
		else
			flash[:notice] = "User does not exist."
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to :root
	end
end