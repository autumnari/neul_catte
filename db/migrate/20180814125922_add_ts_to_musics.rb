class AddTsToMusics < ActiveRecord::Migration[5.1]
  def change
    add_column :musics, :ts, :string
  end
end
