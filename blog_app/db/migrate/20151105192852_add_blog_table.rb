class AddBlogTable < ActiveRecord::Migration
  def change
  	create_table(:blogs) do |t|
  		t.string :content
  		t.text :img_url
  		t.string :category
  	end
  end
end
