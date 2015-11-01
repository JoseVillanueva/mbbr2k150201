json.array!(@medical_centers) do |medical_center|
  json.extract! medical_center, :id, :name, :tax_identification, :address, :phone
  json.url medical_center_url(medical_center, format: :json)
end
