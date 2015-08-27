json.array!(@marcas) do |marca|
  json.extract! marca, :id, :nome
  json.url marca_url(marca, format: :json)
end
