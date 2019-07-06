class ProfileController < ApplicationController
	def show
		@profile = Admin.find(params[:id])
	end

	def view
		@post = Post.find(params[:id])
		@comment = Comment.new
	end

	def create
		@comment = Comment.new(set_params)
		if @comment.save
			flash[:success] = "Comment added successfully."
			redirect_to post_path(@comment.post_id)
		else
			flash[:errors] = "Comment can't be blank"
			redirect_to post_path(@comment.post_id)
		end
	end

	private
		def set_params
			params.require(:comment).permit(:content, :admin_id, :post_id)
		end
end
