json.extract! client, :id, :nom, :prenom, :adresse, :numero_telephone, :email, :created_at, :updated_at
json.url client_url(client, format: :json)
