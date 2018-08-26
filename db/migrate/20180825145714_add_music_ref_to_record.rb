class AddMusicRefToRecord < ActiveRecord::Migration[5.1]
  def change
    add_reference :records, :music, foreign_key: true
  end
end
