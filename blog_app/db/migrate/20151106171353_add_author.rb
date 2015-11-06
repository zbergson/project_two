class AddAuthor < ActiveRecord::Migration
  def change
  	add_column :blogs, :author, :text
  end
end
