class CreateTagSuggestions < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_suggestions do |t|
      t.string :title
      t.belongs_to :user, foreign_key: true
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
