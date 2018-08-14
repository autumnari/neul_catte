class AddCountToDailies < ActiveRecord::Migration[5.1]
  def change
    add_column :dailies, :count, :integer
  end
end
