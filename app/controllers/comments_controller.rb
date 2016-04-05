class CommentsController < ApplicationController
	before_action :authenticate!

	def create
		@post = Post.find(params["id"])
		@post.comments.create(text: params["text"], user_id: current_user.id)
		redirect_to posts_show_path(@post)
	end

	def destroy
		c = Comment.find(params["id"])
		@post = c.post_id
		if current_user.id == c.user_id
			c.destroy
		else
			flash[:notice] = "You can't delete other users' posts!"
		end
		redirect_to posts_show_path(@post)
	end
end