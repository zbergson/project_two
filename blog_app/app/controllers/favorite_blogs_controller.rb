class FavoriteBlogsController < ApplicationController
	# before_action :set_blog

	def list

		current_user.id
		@user_id = current_user.favorites
		
	end

	def create
		@blog = Blog.find(params[:blog_id] || params[:id])
    if Favorite.create(favorited: @blog, user: current_user, headline: @blog.headline, content: @blog.content, img_url: @blog.img_url)
      redirect_to @blog, notice: 'Blog has been favorited'
    else
      redirect_to @blog, alert: 'Something went wrong...*sad panda*'
    end
  end

  def destroy
    Favorite.where(favorited_id: @blog.id, user_id: current_user.id).first.destroy
    redirect_to blog, notice: 'Blog is no longer in favorites'
  end


	private
  
  # def set_blog
    # @blog = Blog.find(params[:blog_id] || params[:id])
    
  # end
end
