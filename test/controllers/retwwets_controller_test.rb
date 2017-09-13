require 'test_helper'

class RetwwetsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get retwwets_create_url
    assert_response :success
  end

  test "should get destroy" do
    get retwwets_destroy_url
    assert_response :success
  end

end
