class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :access_lvl, :string
  end
end
