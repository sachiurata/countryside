class CreatePostCategoryWants < ActiveRecord::Migration[7.0]
  def change
    create_table :post_category_wants do |t|
      t.integer :post_id
      t.integer :category_want_id
      t.timestamps
    end
  end
end
