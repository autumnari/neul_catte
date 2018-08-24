class AddBodyToDaily < ActiveRecord::Migration[5.1]
  def change
    add_column :dailies, :body, :text
  end
end
