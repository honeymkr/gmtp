require "test_helper"

class AdPlatformsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ad_platform = ad_platforms(:one)
  end

  test "should get index" do
    get ad_platforms_url
    assert_response :success
  end

  test "should get new" do
    get new_ad_platform_url
    assert_response :success
  end

  test "should create ad_platform" do
    assert_difference("AdPlatform.count") do
      post ad_platforms_url, params: { ad_platform: { name: @ad_platform.name } }
    end

    assert_redirected_to ad_platform_url(AdPlatform.last)
  end

  test "should show ad_platform" do
    get ad_platform_url(@ad_platform)
    assert_response :success
  end

  test "should get edit" do
    get edit_ad_platform_url(@ad_platform)
    assert_response :success
  end

  test "should update ad_platform" do
    patch ad_platform_url(@ad_platform), params: { ad_platform: { name: @ad_platform.name } }
    assert_redirected_to ad_platform_url(@ad_platform)
  end

  test "should destroy ad_platform" do
    assert_difference("AdPlatform.count", -1) do
      delete ad_platform_url(@ad_platform)
    end

    assert_redirected_to ad_platforms_url
  end
end
