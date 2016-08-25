json.extract! item, :id, :nome, :tipo, :descricao, :frequencia, :dia_semana, :dia_mes, :created_at, :updated_at
json.url item_url(item, format: :json)