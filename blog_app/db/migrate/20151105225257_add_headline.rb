class AddHeadline < ActiveRecord::Migration
  def change
  	add_column :blogs, :headline, :text
  end
end
