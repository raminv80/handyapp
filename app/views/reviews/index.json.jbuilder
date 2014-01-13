json.array!(@reviews) do |review|
  json.extract! review, :id, :rank, :user_id, :service_id, :service_request_id, :message
  json.url review_url(review, format: :json)
end
