json.extract! registro_diario, :id, :data_registro, :created_at, :updated_at
json.url registro_diario_url(registro_diario, format: :json)