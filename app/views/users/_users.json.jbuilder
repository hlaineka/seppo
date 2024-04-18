json.extract! user, :id, :username, :instructors_id, :players_id :created_at, :updated_at
json.url user_url(user, format: :json)