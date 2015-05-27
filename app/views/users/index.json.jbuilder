json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :address, :phone, :email, :is_admin
  json.url user_url(user, format: :json)
end
