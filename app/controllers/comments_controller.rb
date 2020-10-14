class CommentsController < ApplicationController

	def create
		@post = Post.find(params[:post_id])
		@comment = Comment.new(resource_params)

		@comment.post = @post
		@comment.user = current_user

		if @comment.save
			redirect_to post_path(@post)
		else
			redirect_to post_path(@post)
		end
	end

	private

	def resource_params
		params.require(:comment).permit(:comment_text)
		
	end
end

