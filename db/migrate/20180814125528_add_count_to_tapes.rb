class AddCountToTapes < ActiveRecord::Migration[5.1]
  def change
    add_column :tapes, :count, :integer
  end
end
