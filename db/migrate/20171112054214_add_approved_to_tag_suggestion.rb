class AddApprovedToTagSuggestion < ActiveRecord::Migration[5.0]
  def change
    add_column :tag_suggestions, :approved, :boolean
  end
end
