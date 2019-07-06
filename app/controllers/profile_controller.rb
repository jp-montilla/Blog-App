class ProfileController < ApplicationController
	def show
		@profile = Admin.find(params[:id])
	end

	def view
		@post = Post.find(params[:id])
		@comment = Comment.new
	end
end
