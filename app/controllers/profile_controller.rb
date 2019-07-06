class ProfileController < ApplicationController
	def show
		@profile = Admin.find(params[:id])
		
	end
end
