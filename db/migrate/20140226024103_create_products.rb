class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.string 	:title,           :null => false, :default => ""
    	t.string 	:zh_cn_title,     :null => false, :default => ""
    	t.text 		:content
    	t.text 		:zh_cn_content
    	t.integer :photo
      t.timestamps
    end
  end
end
