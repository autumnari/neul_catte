class RemoveUserIdFromRecord < ActiveRecord::Migration[5.1]
  def change
    remove_column :records, :user_id, :integer
  end
end
