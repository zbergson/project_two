class AddContent < ActiveRecord::Migration
  def change
  	add_column :favorites, :content, :text
  end
end
