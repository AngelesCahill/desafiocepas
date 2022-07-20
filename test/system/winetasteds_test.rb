require "application_system_test_case"

class WinetastedsTest < ApplicationSystemTestCase
  setup do
    @winetasted = winetasteds(:one)
  end

  test "visiting the index" do
    visit winetasteds_url
    assert_selector "h1", text: "Winetasteds"
  end

  test "should create winetasted" do
    visit winetasteds_url
    click_on "New winetasted"

    fill_in "Name", with: @winetasted.name
    fill_in "Percentage", with: @winetasted.percentage
    fill_in "Strain", with: @winetasted.strain
    click_on "Create Winetasted"

    assert_text "Winetasted was successfully created"
    click_on "Back"
  end

  test "should update Winetasted" do
    visit winetasted_url(@winetasted)
    click_on "Edit this winetasted", match: :first

    fill_in "Name", with: @winetasted.name
    fill_in "Percentage", with: @winetasted.percentage
    fill_in "Strain", with: @winetasted.strain
    click_on "Update Winetasted"

    assert_text "Winetasted was successfully updated"
    click_on "Back"
  end

  test "should destroy Winetasted" do
    visit winetasted_url(@winetasted)
    click_on "Destroy this winetasted", match: :first

    assert_text "Winetasted was successfully destroyed"
  end
end
