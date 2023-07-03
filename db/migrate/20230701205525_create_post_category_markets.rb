class CreatePostCategoryMarkets < ActiveRecord::Migration[7.0]
  def change
    create_table :post_category_markets do |t|
      t.integer :post_id
      t.integer :category_market_id
      t.timestamps
    end
  end
end
