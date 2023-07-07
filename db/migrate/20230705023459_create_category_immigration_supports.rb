class CreateCategoryImmigrationSupports < ActiveRecord::Migration[7.0]
  def change
    create_table :category_immigration_supports do |t|
      t.string :tag_name
      t.timestamps
    end
  end
end
