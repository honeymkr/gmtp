require "application_system_test_case"

class AdPlatformsTest < ApplicationSystemTestCase
  setup do
    @ad_platform = ad_platforms(:one)
  end

  test "visiting the index" do
    visit ad_platforms_url
    assert_selector "h1", text: "Ad platforms"
  end

  test "should create ad platform" do
    visit ad_platforms_url
    click_on "New ad platform"

    fill_in "Name", with: @ad_platform.name
    click_on "Create Ad platform"

    assert_text "Ad platform was successfully created"
    click_on "Back"
  end

  test "should update Ad platform" do
    visit ad_platform_url(@ad_platform)
    click_on "Edit this ad platform", match: :first

    fill_in "Name", with: @ad_platform.name
    click_on "Update Ad platform"

    assert_text "Ad platform was successfully updated"
    click_on "Back"
  end

  test "should destroy Ad platform" do
    visit ad_platform_url(@ad_platform)
    click_on "Destroy this ad platform", match: :first

    assert_text "Ad platform was successfully destroyed"
  end
end
