json.array!(@medicines) do |medicine|
  json.extract! medicine, :id, :name
  json.url medicine_url(medicine, format: :json)
end
