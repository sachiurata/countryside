class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :post_type
      t.string :title
      t.string :prefecture
      t.string :city
      t.text :body1
      t.text :body2
      t.text :feature
      t.string :attachment
      t.string :realizability
      t.string :earnest
      t.integer :public_status_id
      t.timestamps 
    end
  end
end
