class BlogsController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :set_blog, only: [:show, :edit, :update, :destroy]
	
	
	def index

		@blogs = Blog.all.order("blogs.id desc")
			
	end

	def new
	
	
	end

	def create 

		post_params = params.permit(:content, :category, :user_id, :img_url, :headline, :author) 
		
		@blog = Blog.create(post_params)
		redirect_to '/blogs'

	end

	def show

		

	end

	def author

		@user_id = User.where(id: params[:user_id])
		
		
		@blog = Blog.order("blogs.id desc").where user_id: params[:user_id]

	end

	def edit

		

	end

	def update

		@blog.update_attributes(blog_params)
		redirect_to '/blogs'
	end

	private

	def set_blog
		@blog = Blog.find(params[:id])
	end

	def blog_params
		params.require(:blog).permit(:content, :category, :user_id, :img_url, :headline, :author) 
	end


end
