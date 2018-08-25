require 'test_helper'

class OwnerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_index_url
    assert_response :success
  end

  test "should get show" do
    get owner_show_url
    assert_response :success
  end

  test "should get create" do
    get owner_create_url
    assert_response :success
  end

  test "should get new" do
    get owner_new_url
    assert_response :success
  end

end
