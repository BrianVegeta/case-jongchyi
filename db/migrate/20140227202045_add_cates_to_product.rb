class AddCatesToProduct < ActiveRecord::Migration
  def change
  	add_column :products, :category, :integer
  end
end
