json.array!(@customers) do |customer|
  json.extract! customer, :id, :idcard, :name, :last_name, :sec_last_name, :date_of_birth, :address, :email, :Company_id
  json.url customer_url(customer, format: :json)
end
