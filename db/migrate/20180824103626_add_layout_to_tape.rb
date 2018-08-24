class AddLayoutToTape < ActiveRecord::Migration[5.1]
  def change
    add_column :tapes, :layout, :text
  end
end
