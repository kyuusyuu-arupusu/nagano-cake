require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get orders_index_url
    assert_response :success
  end

  test "should get show" do
    get orders_show_url
    assert_response :success
  end

  test "should get finish" do
    get orders_finish_url
    assert_response :success
  end

  test "should get check" do
    get orders_check_url
    assert_response :success
  end

end
