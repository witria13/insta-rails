class FavoritesController < ApplicationController
  before_action :find_post

  def create
    if Favorite.already_favorited?(current_user,params)
      flash[:notice] = "You can't favorite more than once"
    else
      @post.favorites.create(user_id: current_user.id)
    end
      redirect_to posts_path
  end

  def destroy
    @post.favorites.find(params[:id]).destroy
    redirect_to posts_path
  end

  private
  
  def find_post
    @post = Post.find(params[:post_id])
  end
end