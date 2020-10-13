class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end
 
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end
 
  def new
    @post = Post.new
  end
 
  def create
    @post = Post.new(post_params)
    @post.user = User.first

    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end
 
  
 
  private
 
  def post_params
    params.require(:post).permit(:user_id, :caption, :image)
  end
 
end