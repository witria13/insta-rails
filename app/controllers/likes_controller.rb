class LikesController < ApplicationController
   before_action :find_post

  def create
    if Like.already_liked?(current_user,params)
      flash[:notice] = "You can't like more than once"
    else
      @post.likes.create(user_id: current_user.id)
    end
      redirect_to posts_path
  end

  def destroy
    @post.likes.find(params[:id]).destroy
    redirect_to posts_path
  end

  private
  
  def find_post
    @post = Post.find(params[:post_id])
  end
end