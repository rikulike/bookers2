require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index," do
    get users_index,_url
    assert_response :success
  end

  test "should get show," do
    get users_show,_url
    assert_response :success
  end

  test "should get edit" do
    get users_edit_url
    assert_response :success
  end
end
