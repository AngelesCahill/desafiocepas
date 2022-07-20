require "test_helper"

class WinetastedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @winetasted = winetasteds(:one)
  end

  test "should get index" do
    get winetasteds_url
    assert_response :success
  end

  test "should get new" do
    get new_winetasted_url
    assert_response :success
  end

  test "should create winetasted" do
    assert_difference("Winetasted.count") do
      post winetasteds_url, params: { winetasted: { name: @winetasted.name, percentage: @winetasted.percentage, strain: @winetasted.strain } }
    end

    assert_redirected_to winetasted_url(Winetasted.last)
  end

  test "should show winetasted" do
    get winetasted_url(@winetasted)
    assert_response :success
  end

  test "should get edit" do
    get edit_winetasted_url(@winetasted)
    assert_response :success
  end

  test "should update winetasted" do
    patch winetasted_url(@winetasted), params: { winetasted: { name: @winetasted.name, percentage: @winetasted.percentage, strain: @winetasted.strain } }
    assert_redirected_to winetasted_url(@winetasted)
  end

  test "should destroy winetasted" do
    assert_difference("Winetasted.count", -1) do
      delete winetasted_url(@winetasted)
    end

    assert_redirected_to winetasteds_url
  end
end
