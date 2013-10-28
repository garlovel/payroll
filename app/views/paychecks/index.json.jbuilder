json.array!(@paychecks) do |paycheck|
  json.extract! paycheck, :employee_id, :schedule_id, :units, :date, :gross, :css, :cmc, :net, :fit, :ess, :emc, :check_no, :issued
  json.url paycheck_url(paycheck, format: :json)
end
