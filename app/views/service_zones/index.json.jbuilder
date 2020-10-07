json.array!(@service_zones) do |service_zone|
  json.extract! service_zone, :id, :longitude, :latitude
  json.url service_zone_url(service_zone, format: :json)
end
