class PostsController < ApplicationController
    
   before_action  :authenticate_user! 

  POSTS_PER_PAGE    = 5

  def index
    @posts = Post.all
  end
 
  def show
    @post = Post.find(params[:id])
    @posts = @post.comments
    @comment = Comment.new
  end
 
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end
 

  def like_toogle
    @post = Post.find(params[:id])
    already_like = current_user.likes.find_by(post_id: @post.id)

    if already_like
      @post.likes.find_by(user: current_user).destroy
    else
       @post.likes.create(user: current_user)
     end
     redirect_to posts_path
  end

  private
 
  def post_params
    params.require(:post).permit(:user_id, :caption, :image, :active_comment)
  end
 
end