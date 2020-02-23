require 'test_helper'

class ShippingAddressesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shipping_addresses_index_url
    assert_response :success
  end

  test "should get edit" do
    get shipping_addresses_edit_url
    assert_response :success
  end

end
