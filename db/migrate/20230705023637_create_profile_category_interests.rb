class CreateProfileCategoryInterests < ActiveRecord::Migration[7.0]
  def change
    create_table :profile_category_interests do |t|
      t.integer :user_profile_id
      t.integer :category_interest_id
      t.timestamps
    end
  end
end
