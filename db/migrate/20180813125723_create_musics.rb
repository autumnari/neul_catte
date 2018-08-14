class CreateMusics < ActiveRecord::Migration[5.1]
  def self.up
    create_table :musics do |t|
      t.string :title
      t.string :singer
      t.references :fantastic, :polymorphic => true

      t.timestamps
    end
  end

  def self.down
      drop_table :musics
  end
end
