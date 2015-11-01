json.array!(@birth_types) do |birth_type|
  json.extract! birth_type, :id, :name
  json.url birth_type_url(birth_type, format: :json)
end
