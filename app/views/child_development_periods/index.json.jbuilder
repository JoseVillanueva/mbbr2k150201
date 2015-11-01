json.array!(@child_development_periods) do |child_development_period|
  json.extract! child_development_period, :id, :date_contol, :weight, :size, :head_circunference, :Child_id, :Child_development_id, :Medical_center_id, :Doctor_id
  json.url child_development_period_url(child_development_period, format: :json)
end
