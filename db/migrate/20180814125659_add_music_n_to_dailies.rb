class AddMusicNToDailies < ActiveRecord::Migration[5.1]
  def change
    add_column :dailies, :musicN, :integer
  end
end
