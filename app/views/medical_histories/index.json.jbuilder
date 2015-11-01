json.array!(@medical_histories) do |medical_history|
  json.extract! medical_history, :id, :date_register, :description, :weight_picture, :height_picture, :type_picture, :picture, :Medical_insurance_id, :Medical_center_id, :Medicine_id, :Medical_exam_id, :Doctor_id, :Child_id, :Health_problem_id
  json.url medical_history_url(medical_history, format: :json)
end
