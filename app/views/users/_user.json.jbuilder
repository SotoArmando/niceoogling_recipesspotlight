json.extract! user, :id, :mail, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
