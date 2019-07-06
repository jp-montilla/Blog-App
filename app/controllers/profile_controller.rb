class ProfileController < ApplicationController
	def show
		@profile = Admin.find(params[:id])
	end
	
	def view
		@post = Post.find(params[:id])
	end
end
