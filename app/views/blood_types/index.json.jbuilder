json.array!(@blood_types) do |blood_type|
  json.extract! blood_type, :id, :name
  json.url blood_type_url(blood_type, format: :json)
end
