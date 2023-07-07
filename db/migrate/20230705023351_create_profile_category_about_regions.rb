class CreateProfileCategoryAboutRegions < ActiveRecord::Migration[7.0]
  def change
    create_table :profile_category_about_regions do |t|
      t.integer :user_profile_id
      t.integer :category_about_region_id
      t.timestamps
    end
  end
end
