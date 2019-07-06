class AdminController < ApplicationController
	before_action :authenticate_admin!
	before_action :verify_admin

	def index
		@admin = Admin.order(:name)
	end

	def new
		@admin = Admin.new
	end

	def create
		@admin = Admin.new(set_params)
		if @admin.save
			flash[:success] = "Admin created successfully."
			redirect_to admins_path
		else
			flash[:errors] = @admin.errors.full_messages
			redirect_to admins_new_path
		end
	end

	def edit
		@admin = Admin.find(params[:id])
	end

	def update
		@admin = Admin.find(params[:id])
		if @admin.update(set_params)
			flash[:success] = "Admin updated successfully."
			redirect_to admins_path
		end
	end

	def destroy
		if Admin.count < 1
			@admin = Admin.find(params[:id])
			@admin.destroy
			flash[:success] = "Admin deleted successfully."
			redirect_to admins_path
		else
			flash[:del_errors] = "Can't delete last admin."
			redirect_to admins_path
		end
	end

	private
		def set_params
			params.require(:admin).permit(:email,:name,:role,:password,:password_confirmation)
		end

		def verify_admin
			if current_admin.role == "user"
				redirect_to root_path
			end
		end



end
