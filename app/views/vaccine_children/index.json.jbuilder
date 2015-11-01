json.array!(@vaccine_children) do |vaccine_child|
  json.extract! vaccine_child, :id, :date_suggested, :date_register, :dosis_vacune, :status, :weight_picture, :height_picture, :type_picture, :picture, :Medical_center_id, :Vaccine_plan_id, :Child_id
  json.url vaccine_child_url(vaccine_child, format: :json)
end
