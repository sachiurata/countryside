class CreateCategoryJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :category_jobs do |t|
      t.string :tag_name
      t.timestamps
    end
  end
end
