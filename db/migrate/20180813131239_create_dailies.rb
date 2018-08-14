class CreateDailies < ActiveRecord::Migration[5.1]
  def change
    create_table :dailies do |t|
      t.integer :user_id
      t.string :daily_title

      t.timestamps
    end
  end
end
