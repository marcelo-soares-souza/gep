json.array!(@users) do |user|
  json.extract! user, :id, :nome, :email, :cpf
  json.url user_url(user, format: :json)
end
