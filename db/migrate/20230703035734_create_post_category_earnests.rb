class CreatePostCategoryEarnests < ActiveRecord::Migration[7.0]
  def change
    create_table :post_category_earnests do |t|
      t.integer :post_id
      t.integer :category_earnest_id
      t.timestamps
    end
  end
end
