require "application_system_test_case"

class WinemakerWinetastedsTest < ApplicationSystemTestCase
  setup do
    @winemaker_winetasted = winemaker_winetasteds(:one)
  end

  test "visiting the index" do
    visit winemaker_winetasteds_url
    assert_selector "h1", text: "Winemaker winetasteds"
  end

  test "should create winemaker winetasted" do
    visit winemaker_winetasteds_url
    click_on "New winemaker winetasted"

    click_on "Create Winemaker winetasted"

    assert_text "Winemaker winetasted was successfully created"
    click_on "Back"
  end

  test "should update Winemaker winetasted" do
    visit winemaker_winetasted_url(@winemaker_winetasted)
    click_on "Edit this winemaker winetasted", match: :first

    click_on "Update Winemaker winetasted"

    assert_text "Winemaker winetasted was successfully updated"
    click_on "Back"
  end

  test "should destroy Winemaker winetasted" do
    visit winemaker_winetasted_url(@winemaker_winetasted)
    click_on "Destroy this winemaker winetasted", match: :first

    assert_text "Winemaker winetasted was successfully destroyed"
  end
end
