require 'test_helper'

class ChargeCodesStatisticsControllerTest < ActionController::TestCase
  setup do
    @charge_codes_statistic = charge_codes_statistics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:charge_codes_statistics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create charge_codes_statistic" do
    assert_difference('ChargeCodesStatistic.count') do
      post :create, charge_codes_statistic: { charge_code_amount: @charge_codes_statistic.charge_code_amount, charge_code_dest_number: @charge_codes_statistic.charge_code_dest_number, charge_code_id: @charge_codes_statistic.charge_code_id, charge_code_instruc_no_t: @charge_codes_statistic.charge_code_instruc_no_t, charge_code_instruc_t: @charge_codes_statistic.charge_code_instruc_t, charge_code_name: @charge_codes_statistic.charge_code_name, union_name: @charge_codes_statistic.union_name, yewucode_name: @charge_codes_statistic.yewucode_name }
    end

    assert_redirected_to charge_codes_statistic_path(assigns(:charge_codes_statistic))
  end

  test "should show charge_codes_statistic" do
    get :show, id: @charge_codes_statistic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @charge_codes_statistic
    assert_response :success
  end

  test "should update charge_codes_statistic" do
    patch :update, id: @charge_codes_statistic, charge_codes_statistic: { charge_code_amount: @charge_codes_statistic.charge_code_amount, charge_code_dest_number: @charge_codes_statistic.charge_code_dest_number, charge_code_id: @charge_codes_statistic.charge_code_id, charge_code_instruc_no_t: @charge_codes_statistic.charge_code_instruc_no_t, charge_code_instruc_t: @charge_codes_statistic.charge_code_instruc_t, charge_code_name: @charge_codes_statistic.charge_code_name, union_name: @charge_codes_statistic.union_name, yewucode_name: @charge_codes_statistic.yewucode_name }
    assert_redirected_to charge_codes_statistic_path(assigns(:charge_codes_statistic))
  end

  test "should destroy charge_codes_statistic" do
    assert_difference('ChargeCodesStatistic.count', -1) do
      delete :destroy, id: @charge_codes_statistic
    end

    assert_redirected_to charge_codes_statistics_path
  end
end
