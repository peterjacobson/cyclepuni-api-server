json.array!(@people) do |person|
  json.extract! person, :id, :name, :phone, :email, :search_string
  json.url person_url(person, format: :json)
end