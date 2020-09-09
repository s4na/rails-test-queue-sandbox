class AddOldColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :old_column, :string
  end
end
