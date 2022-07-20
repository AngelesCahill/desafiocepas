require "application_system_test_case"

class WinemakersTest < ApplicationSystemTestCase
  setup do
    @winemaker = winemakers(:one)
  end

  test "visiting the index" do
    visit winemakers_url
    assert_selector "h1", text: "Winemakers"
  end

  test "should create winemaker" do
    visit winemakers_url
    click_on "New winemaker"

    fill_in "Age", with: @winemaker.age
    fill_in "Magazine", with: @winemaker.magazine
    fill_in "Name", with: @winemaker.name
    fill_in "Nationality", with: @winemaker.nationality
    fill_in "Position", with: @winemaker.position
    fill_in "Record", with: @winemaker.record
    click_on "Create Winemaker"

    assert_text "Winemaker was successfully created"
    click_on "Back"
  end

  test "should update Winemaker" do
    visit winemaker_url(@winemaker)
    click_on "Edit this winemaker", match: :first

    fill_in "Age", with: @winemaker.age
    fill_in "Magazine", with: @winemaker.magazine
    fill_in "Name", with: @winemaker.name
    fill_in "Nationality", with: @winemaker.nationality
    fill_in "Position", with: @winemaker.position
    fill_in "Record", with: @winemaker.record
    click_on "Update Winemaker"

    assert_text "Winemaker was successfully updated"
    click_on "Back"
  end

  test "should destroy Winemaker" do
    visit winemaker_url(@winemaker)
    click_on "Destroy this winemaker", match: :first

    assert_text "Winemaker was successfully destroyed"
  end
end
