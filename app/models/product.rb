class Product < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :price, presence: true
end
