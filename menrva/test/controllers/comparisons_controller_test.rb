require 'test_helper'

class ComparisonsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get comparisons_new_url
    assert_response :success
  end

  test "should get create" do
    get comparisons_create_url
    assert_response :success
  end

  test "should get show" do
    get comparisons_show_url
    assert_response :success
  end

end
