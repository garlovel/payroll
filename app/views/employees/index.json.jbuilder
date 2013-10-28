json.array!(@employees) do |employee|
  json.extract! employee, :employee_type, :full_name, :status, :exemptions, :additional
  json.url employee_url(employee, format: :json)
end
