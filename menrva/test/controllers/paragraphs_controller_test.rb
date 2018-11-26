require 'test_helper'

class ParagraphsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get paragraphs_new_url
    assert_response :success
  end

  test "should get show" do
    get paragraphs_show_url
    assert_response :success
  end

  test "should get create" do
    get paragraphs_create_url
    assert_response :success
  end

end
