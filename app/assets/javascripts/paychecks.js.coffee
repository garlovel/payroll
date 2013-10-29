# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $("input#paycheck_rate").keyup ->
    schedule = $("#paycheck_schedule_id").val()
    employee = $("#paycheck_employee_id").val()
    units = $("#paycheck_units").val()
    rate = $("#paycheck_rate").val()
    $.post "/paychecks/update_amounts", { schedule: schedule, employee: employee, units: units, rate: rate }

