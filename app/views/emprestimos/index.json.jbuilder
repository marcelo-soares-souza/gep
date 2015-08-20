json.array!(@emprestimos) do |emprestimo|
  json.extract! emprestimo, :id, :user_id, :equipamento_id, :data_inicio, :data_fim, :situacao
  json.url emprestimo_url(emprestimo, format: :json)
end
