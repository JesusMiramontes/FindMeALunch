class CreatePriceSuggestions < ActiveRecord::Migration[5.0]
  def change
    create_table :price_suggestions do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :product, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end
