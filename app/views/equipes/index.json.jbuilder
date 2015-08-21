json.array!(@equipes) do |equipe|
  json.extract! equipe, :id, :user_id, :projeto_id, :data_inicio, :data_fim, :situacao
  json.url equipe_url(equipe, format: :json)
end
