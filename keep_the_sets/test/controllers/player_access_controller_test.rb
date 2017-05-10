require 'test_helper'

class PlayerAccessControllerTest < ActionDispatch::IntegrationTest
  test "should get menu" do
    get player_access_menu_url
    assert_response :success
  end

  test "should get login" do
    get player_access_login_url
    assert_response :success
  end

end
