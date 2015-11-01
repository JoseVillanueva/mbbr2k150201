json.array!(@medical_insurances) do |medical_insurance|
  json.extract! medical_insurance, :id, :nom_seguro, :name, :tax_identification, :address, :website, :email
  json.url medical_insurance_url(medical_insurance, format: :json)
end
