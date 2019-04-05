class RemoveColumnBackgroundFromProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :background, :string
  end
end
