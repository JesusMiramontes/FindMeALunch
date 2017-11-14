class Combo < ApplicationRecord
    after_create :save_products
    
    def products=(value)
        @products = value
    end
    
    private
    def save_products
        @products.each do |product_id|
	        HasProduct.create(product_id: product_id, combo_id: self.id)
        end
    end
    
end