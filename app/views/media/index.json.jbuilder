json.array!(@media) do |medium|
  json.extract! medium, :id, :name, :type, :size, :service_request_id, :user_id
  json.url medium_url(medium, format: :json)
end
