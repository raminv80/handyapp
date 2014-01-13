json.array!(@negotiations) do |negotiation|
  json.extract! negotiation, :id, :quata_id, :message, :from_id, :to_id, :state
  json.url negotiation_url(negotiation, format: :json)
end
