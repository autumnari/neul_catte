class AddUserRefToRecord < ActiveRecord::Migration[5.1]
  def change
    add_reference :records, :user, foreign_key: true
  end
end
