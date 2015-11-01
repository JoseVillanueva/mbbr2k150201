json.array!(@vaccine_plans) do |vaccine_plan|
  json.extract! vaccine_plan, :id, :nmes, :Vaccine_id
  json.url vaccine_plan_url(vaccine_plan, format: :json)
end
