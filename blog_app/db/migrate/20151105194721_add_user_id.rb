class AddUserId < ActiveRecord::Migration
  def change
  	add_reference :blogs, :user
  end
end
