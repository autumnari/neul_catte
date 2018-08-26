class AddUserRefToDaily < ActiveRecord::Migration[5.1]
  def change
    add_reference :dailies, :user, foreign_key: true
  end
end
