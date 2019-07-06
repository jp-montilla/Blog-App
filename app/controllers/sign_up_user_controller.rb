class SignUpUserController < ApplicationController
	def new
		@user = Admin.new
	end

	def create
		@user = Admin.new(set_params)
		if @user.save
			flash[:success] = "User created successfully."
			redirect_to root_path
		else
			flash[:errors] = @user.errors.full_messages
			redirect_to register_path
		end
	end

	private
		def set_params
			params.require(:admin).permit(:email,:name,:role,:password,:password_confirmation)
		end
end
