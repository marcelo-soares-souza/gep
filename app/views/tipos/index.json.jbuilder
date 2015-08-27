json.array!(@tipos) do |tipo|
  json.extract! tipo, :id, :nome
  json.url tipo_url(tipo, format: :json)
end
