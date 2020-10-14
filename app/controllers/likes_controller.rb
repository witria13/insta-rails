class LikesController < ApplicationController
   before_action :find_post

  def create
    @post.likes.create(user_id: User.first.id)
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