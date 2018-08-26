class AddUserRefToTape < ActiveRecord::Migration[5.1]
  def change
    add_reference :tapes, :user, foreign_key: true
  end
end
