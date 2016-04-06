class PostsController < ApplicationController
	before_action :authenticate!, except: [:index, :show]

	def index
		@posts = Post.all
		render :index
	end

	def new
		@post = Post.new
		render :new
	end

	def create
		if current_user
			@post = current_user.posts.new(label: params["label"],
										url: params["url"])
			if @post.save
				redirect_to posts_show_path(@post)
			else
				render :new
			end
		else
			flash[:notice] = "You must be logged in to post."
			redirect_to :root
		end
	end

	def edit
		post = Post.find(params["id"])
		render :edit, locals: { post: post }
	end

	def update
    	post = Post.find(params["id"])
    	post.update(label: params["label"],
                url: params["url"])
    	redirect_to root_path
 	 end

	def destroy
		post = Post.find(params["id"])
		if current_user.id == post.user_id
			post.destroy
		else 
			flash[:notice] = "A BUNCH OF JIBBERISH"
		end
		redirect_to :root
	end

	def show
		@post = Post.find(params["id"])
		render :show
	end
end
				