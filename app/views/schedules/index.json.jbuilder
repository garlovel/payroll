json.array!(@schedules) do |schedule|
  json.extract! schedule, :code, :description, :period, :factor, :rate
  json.url schedule_url(schedule, format: :json)
end
