class CreatePostCategoryIssues < ActiveRecord::Migration[7.0]
  def change
    create_table :post_category_issues do |t|
      t.integer :post_id
      t.integer :category_issue_id
      t.timestamps
    end
  end
end
