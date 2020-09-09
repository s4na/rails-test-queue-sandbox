class AddNewColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :new_column, :string
  end
end
