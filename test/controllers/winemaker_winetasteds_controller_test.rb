require "test_helper"

class WinemakerWinetastedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @winemaker_winetasted = winemaker_winetasteds(:one)
  end

  test "should get index" do
    get winemaker_winetasteds_url
    assert_response :success
  end

  test "should get new" do
    get new_winemaker_winetasted_url
    assert_response :success
  end

  test "should create winemaker_winetasted" do
    assert_difference("WinemakerWinetasted.count") do
      post winemaker_winetasteds_url, params: { winemaker_winetasted: {  } }
    end

    assert_redirected_to winemaker_winetasted_url(WinemakerWinetasted.last)
  end

  test "should show winemaker_winetasted" do
    get winemaker_winetasted_url(@winemaker_winetasted)
    assert_response :success
  end

  test "should get edit" do
    get edit_winemaker_winetasted_url(@winemaker_winetasted)
    assert_response :success
  end

  test "should update winemaker_winetasted" do
    patch winemaker_winetasted_url(@winemaker_winetasted), params: { winemaker_winetasted: {  } }
    assert_redirected_to winemaker_winetasted_url(@winemaker_winetasted)
  end

  test "should destroy winemaker_winetasted" do
    assert_difference("WinemakerWinetasted.count", -1) do
      delete winemaker_winetasted_url(@winemaker_winetasted)
    end

    assert_redirected_to winemaker_winetasteds_url
  end
end
