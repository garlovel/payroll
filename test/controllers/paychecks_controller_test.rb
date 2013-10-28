require 'test_helper'

class PaychecksControllerTest < ActionController::TestCase
  setup do
    @paycheck = paychecks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paychecks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paycheck" do
    assert_difference('Paycheck.count') do
      post :create, paycheck: { check_no: @paycheck.check_no, cmc: @paycheck.cmc, css: @paycheck.css, date: @paycheck.date, emc: @paycheck.emc, employee_id: @paycheck.employee_id, ess: @paycheck.ess, fit: @paycheck.fit, gross: @paycheck.gross, issued: @paycheck.issued, net: @paycheck.net, schedule_id: @paycheck.schedule_id, units: @paycheck.units }
    end

    assert_redirected_to paycheck_path(assigns(:paycheck))
  end

  test "should show paycheck" do
    get :show, id: @paycheck
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paycheck
    assert_response :success
  end

  test "should update paycheck" do
    patch :update, id: @paycheck, paycheck: { check_no: @paycheck.check_no, cmc: @paycheck.cmc, css: @paycheck.css, date: @paycheck.date, emc: @paycheck.emc, employee_id: @paycheck.employee_id, ess: @paycheck.ess, fit: @paycheck.fit, gross: @paycheck.gross, issued: @paycheck.issued, net: @paycheck.net, schedule_id: @paycheck.schedule_id, units: @paycheck.units }
    assert_redirected_to paycheck_path(assigns(:paycheck))
  end

  test "should destroy paycheck" do
    assert_difference('Paycheck.count', -1) do
      delete :destroy, id: @paycheck
    end

    assert_redirected_to paychecks_path
  end
end
