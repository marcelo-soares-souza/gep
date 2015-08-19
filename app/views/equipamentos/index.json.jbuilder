json.array!(@equipamentos) do |equipamento|
  json.extract! equipamento, :id, :item, :patrimonio, :numero_serie, :especificacao, :observacao
  json.url equipamento_url(equipamento, format: :json)
end
