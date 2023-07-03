class CreatePostCategoryRealizabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :post_category_realizabilities do |t|
      t.integer :post_id
      t.integer :category_realizability_id
      t.timestamps
    end
  end
end
