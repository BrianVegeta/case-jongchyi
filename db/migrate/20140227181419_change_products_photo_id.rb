class ChangeProductsPhotoId < ActiveRecord::Migration
  def change
  	rename_column :products, :photo, :photo_id
  end
end
