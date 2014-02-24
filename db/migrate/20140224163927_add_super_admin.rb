class AddSuperAdmin < ActiveRecord::Migration
  def change
  	add_column :users, :super, :boolean, null: false, default: false
  end
end
