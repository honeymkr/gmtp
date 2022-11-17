require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get signup" do
    get pages_signup_url
    assert_response :success
  end

  test "should get ads" do
    get pages_ads_url
    assert_response :success
  end
end
