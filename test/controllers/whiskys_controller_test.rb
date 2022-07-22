require 'test_helper'

class whiskyiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get whiskyies_index_url
    assert_response :success
  end

  test "should get show" do
    get whiskyies_show_url
    assert_response :success
  end

  test "should get new" do
    get whiskyies_new_url
    assert_response :success
  end

  test "should get edit" do
    get whiskyies_edit_url
    assert_response :success
  end

end
