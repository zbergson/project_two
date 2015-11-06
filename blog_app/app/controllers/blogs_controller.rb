class BlogsController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :set_blogs, only: [:show, :edit, :update, :destroy]
	
	def index

		@blogs = Blog.all
			
	end

	def new


	end

	def create 

		@blog = Blog.create(blog_params)
		redirect_to '/blogs'
	end

	def show


	end

	def set_blogs
		@blog = Blog.find(params[:id])
	end


	def blog_params
		params.permit(:content, :category, :user_id, :img_url, :headline, :author)
	end


end
