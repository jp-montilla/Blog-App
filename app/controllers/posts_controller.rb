class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.order(created_at: :desc)
    @add_post = Post.new
  end

  def show
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post added successfully"
      redirect_to root_path
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to root_path
    end
  end

  def update
    if @post.update(post_params)
      flash[:success] = "Post added successfully"
      redirect_to root_path
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to edit_post_path
    end
  end

  def destroy
    @post.destroy
    flash[:success] = "Post deleted successfully"
    redirect_to root_path
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :description, :picture, :admin_id)
    end
end
