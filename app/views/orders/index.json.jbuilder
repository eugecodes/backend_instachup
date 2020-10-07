json.array!(@orders) do |order|
  json.extract! order, :id, :user_id, :address, :longitude, :latitude
  json.url order_url(order, format: :json)
end
