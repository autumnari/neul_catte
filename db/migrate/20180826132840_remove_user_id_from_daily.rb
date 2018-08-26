class RemoveUserIdFromDaily < ActiveRecord::Migration[5.1]
  def change
    remove_column :dailies, :user_id, :integer
  end
end
