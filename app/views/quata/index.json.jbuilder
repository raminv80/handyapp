json.array!(@quata) do |quatum|
  json.extract! quatum, :id, :service_request_id, :user_id, :amount, :duration, :when, :state
  json.url quatum_url(quatum, format: :json)
end
