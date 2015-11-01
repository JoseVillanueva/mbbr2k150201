json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :last_name, :sec_last_name, :Medical_center_id
  json.url doctor_url(doctor, format: :json)
end
