class CommentsController < ApplicationController

	
	def create
		@post = Post.find(params[:post_id])
		@comment = Comment.new(resource_params)

		@comment.post = @post
		@comment.user = User.first

		if @comment.save
			redirect_to post_path(@post) #forum_threads#show
		else
			render 'post/show'
		end
	end

	private

	def resource_params
		params.require(:comment).permit(:comment_text)
		
	end
end

