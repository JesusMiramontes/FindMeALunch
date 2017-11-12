class AddApprovedToPriceSuggestion < ActiveRecord::Migration[5.0]
  def change
    add_column :price_suggestions, :approved, :boolean
  end
end
