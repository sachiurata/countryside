class CreateProfileCategoryJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :profile_category_jobs do |t|
      t.integer :user_profile_id
      t.integer :category_job_id
      t.timestamps
    end
  end
end
