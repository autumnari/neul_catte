class RemoveUserIdFromTape < ActiveRecord::Migration[5.1]
  def change
    remove_column :tapes, :user_id, :integer
  end
end
