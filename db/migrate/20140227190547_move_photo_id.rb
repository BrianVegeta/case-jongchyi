class MovePhotoId < ActiveRecord::Migration
  def up
  	remove_column :products, :photo_id
  	add_column :photos, :product_id, :integer
  end

  def down
  	add_column :products, :photo_id, :integer
  	remove_column :photos, :product_id
  end
end
