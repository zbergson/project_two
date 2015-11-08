class AddImage < ActiveRecord::Migration
  def change
  	add_column :favorites, :img_url, :text
  end
end
