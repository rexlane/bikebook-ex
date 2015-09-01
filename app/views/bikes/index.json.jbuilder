json.array!(@bikes) do |bike|
  json.extract! bike, :id, :model, :manufacturer_id
  json.url bike_url(bike, format: :json)
end
