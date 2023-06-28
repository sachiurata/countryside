class CreatePostCategoryResources < ActiveRecord::Migration[7.0]
  def change
    create_table :post_category_resources do |t|
      t.integer :post_id
      t.integer :category_resource_id
      t.timestamps
    end
  end
end
