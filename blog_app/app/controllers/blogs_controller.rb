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
		
		
		@blog = Blog.where user_id: params[:user_id]



	end

	private


	def blog_params
		params.require(:blog).permit(:content, :category, :user_id, :img_url, :headline, :author)
	end


end
