json.extract! tag_suggestion, :id, :title, :user_id, :product_id, :created_at, :updated_at, :approved
json.url tag_suggestion_url(tag_suggestion, format: :json)
