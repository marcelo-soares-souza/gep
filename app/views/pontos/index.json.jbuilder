json.array!(@pontos) do |ponto|
  json.extract! ponto, :id, :user_id, :data_hora, :situacao
  json.url ponto_url(ponto, format: :json)
end
