class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.integer :user_id
      t.integer :music_id

      t.timestamps
    end
  end
end
