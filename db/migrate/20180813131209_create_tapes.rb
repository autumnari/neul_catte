class CreateTapes < ActiveRecord::Migration[5.1]
  def change
    create_table :tapes do |t|
      t.integer :user_id
      t.string :tape_title
      t.integer :m1
      t.integer :m2
      t.integer :m3
      t.integer :m4
      t.integer :m5
      t.integer :m6
      t.integer :m7
      t.integer :m8
      t.integer :m9
      t.integer :m10

      t.timestamps
    end
  end
end
