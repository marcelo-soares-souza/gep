json.array!(@modelos) do |modelo|
  json.extract! modelo, :id, :nome
  json.url modelo_url(modelo, format: :json)
end
