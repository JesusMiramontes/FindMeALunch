class Product < ApplicationRecord
    has_many:favorite
    validates :title, presence: true, uniqueness: true
    validates :price, presence: true
end
