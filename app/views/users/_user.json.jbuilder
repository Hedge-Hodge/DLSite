json.extract! user, :id, :username, :given_name, :family_name, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
