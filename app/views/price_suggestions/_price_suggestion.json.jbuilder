json.extract! price_suggestion, :id, :user_id, :product_id, :price, :created_at, :updated_at
json.url price_suggestion_url(price_suggestion, format: :json)
