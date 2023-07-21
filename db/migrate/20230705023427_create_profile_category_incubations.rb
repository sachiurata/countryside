class CreateProfileCategoryimmigration_supports < ActiveRecord::Migration[7.0]
  def change
    create_table :profile_category_immigration_supports do |t|
      t.integer :user_profile_id
      t.integer :category_immigration_support_id
      t.timestamps
    end
  end
end
