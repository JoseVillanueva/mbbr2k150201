json.array!(@child_developments) do |child_development|
  json.extract! child_development, :id, :name, :months
  json.url child_development_url(child_development, format: :json)
end
