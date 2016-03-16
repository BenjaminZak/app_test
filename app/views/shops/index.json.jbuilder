json.array!(@shops) do |shop|
  json.extract! shop, :id, :chain, :name, :latitude, :longitude, :address, :city, :zip, :phone
  json.url shop_url(shop, format: :json)
end
