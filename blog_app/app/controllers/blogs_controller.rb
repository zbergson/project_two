class BlogsController < ApplicationController
	skip_before_action :verify_authenticity_token
	
	def index

		@blogs = Blog.all
			
	end

	def new


	end

	def create 

		@blog = Blog.create(blog_params)
		redirect_to '/blogs'
	end


	def blog_params
		params.permit(:content, :category, :user_id, :img_url, :headline)
	end


end
