class BlogsController < ApplicationController
	skip_before_action :verify_authenticity_token
	
	def index

			
	end

	def new



	end


	def user_params
		params.require(:blog).permit(:user, :username)
	end


end
