class Product < ApplicationRecord
    belongs_to :favorite
    validates :title, presence: true, uniqueness: true
    validates :price, presence: true
end
