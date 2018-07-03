json.extract! artwork, :id, :name, :description, :user_id, :created_at, :updated_at
json.url artwork_url(artwork, format: :json)
