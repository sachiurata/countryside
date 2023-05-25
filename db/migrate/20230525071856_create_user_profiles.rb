class CreateUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :user_profiles do |t|
      t.integer :user_id
      t.integer :profile_type
      t.string :screen_name
      t.string :avatar_image
      t.integer :prefecture
      t.string :city
      t.text :about_region
      t.text :incubation
      t.text :immigration_support
      t.text :job
      t.text :skill
      t.text :interest
      t.text :other
      t.integer :public_status_id
      
      t.timestamps
    end
  end
end
