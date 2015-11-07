class BlogsController < ApplicationController
	skip_before_action :verify_authenticity_token
	
	
	def index

		@blogs = Blog.all.order("blogs.id desc")
			
	end

	def new


	end

	def create 

		@blog = Blog.create(blog_params)
		redirect_to '/blogs'
	end

	def show

		@blog = Blog.find(params[:id])

	end

	def author

		@user_id = User.where(id: params[:user_id])
		
		
		@blog = Blog.order("blogs.id desc").where user_id: params[:user_id]

	end

	def edit

	end

	private


	def blog_params
		params.permit(:content, :category, :user_id, :img_url, :headline, :author)
	end


end
