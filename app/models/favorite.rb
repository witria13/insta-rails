class Favorite < ApplicationRecord
	belongs_to	:user
	belongs_to 	:post

	def self.already_favorited?(current_user,params)
    	Favorite.where(user_id: current_user, post_id:params[:post_id]).exists?
  	end
end
