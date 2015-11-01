json.array!(@vaccines) do |vaccine|
  json.extract! vaccine, :id, :name, :composition
  json.url vaccine_url(vaccine, format: :json)
end
