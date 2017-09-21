require 'test_helper'

class BmiStatusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bmi_status_index_url
    assert_response :success
  end

  test "should get show" do
    get bmi_status_show_url
    assert_response :success
  end

end
