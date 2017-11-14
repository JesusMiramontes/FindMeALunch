class CreateHasProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :has_products do |t|
      t.references :combo, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
