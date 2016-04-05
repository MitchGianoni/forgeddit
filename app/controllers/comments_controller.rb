class CommentsController < ApplicationController
	def create
		@post = Post.find(params["id"])
		@post.comments.create(text: params["text"])
		redirect_to posts_path(@post)
	end
end