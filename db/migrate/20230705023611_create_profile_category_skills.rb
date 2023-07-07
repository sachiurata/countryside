class CreateProfileCategorySkills < ActiveRecord::Migration[7.0]
  def change
    create_table :profile_category_skills do |t|
      t.integer :user_profile_id
      t.integer :category_skill_id
      t.timestamps
    end
  end
end
