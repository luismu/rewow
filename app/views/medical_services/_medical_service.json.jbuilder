json.extract! medical_service, :id, :pet_name, :pet_type, :size, :description, :created_at, :updated_at
json.url medical_service_url(medical_service, format: :json)
