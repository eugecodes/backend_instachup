json.array!(@images) do |image|
  json.extract! image, :id, :name, :path, :article_id
  json.url image_url(image, format: :json)
end
