class RemoveMusicIdFromRecord < ActiveRecord::Migration[5.1]
  def change
    remove_column :records, :music_id, :integer
  end
end
