class PostsController < ApplicationController
	def index
		@posts = Post.all
		render :index
	end

	def new
		@post = Post.new
		render :new