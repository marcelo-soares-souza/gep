json.array!(@projetos) do |projeto|
  json.extract! projeto, :id, :user_id, :equipamento_id, :data_inicio, :data_fim, :situacao
  json.url projeto_url(projeto, format: :json)
end
