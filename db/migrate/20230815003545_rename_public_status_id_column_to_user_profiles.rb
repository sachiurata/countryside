class RenamePublicStatusIdColumnToUserProfiles < ActiveRecord::Migration[7.0]
  def change
    rename_column :user_profiles, :public_status_id, :public_status_region
  end
end
