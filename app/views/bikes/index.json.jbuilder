json.array!(@bikes) do |bike|
  json.extract! bike, :id, :photo, :name, :description, :size
  json.url bike_url(bike, format: :json)
end
