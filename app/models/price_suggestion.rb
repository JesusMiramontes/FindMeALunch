class PriceSuggestion < ApplicationRecord
  belongs_to :user
  belongs_to :product
  before_create :default_values

  def default_values
    self.approved = false
  end
end
