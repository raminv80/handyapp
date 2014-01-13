json.array!(@services) do |service|
  json.extract! service, :id, :name, :logo, :description, :rank, :contact_address, :contact_email, :contact_phone, :service_type_id
  json.url service_url(service, format: :json)
end
