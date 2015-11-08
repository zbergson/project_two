class AddTitle < ActiveRecord::Migration
  def change
  	add_column :favorites, :headline, :text
  end
end
