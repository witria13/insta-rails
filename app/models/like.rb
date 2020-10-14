class Like < ApplicationRecord
	belongs_to	:user
	belongs_to 	:post

	 def self.already_liked?(current_user,params)
    	Like.where(user_id: current_user, post_id:params[:post_id]).exists?
  	end
end
