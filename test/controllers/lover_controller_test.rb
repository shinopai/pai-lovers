require "test_helper"

class LoverControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lover_index_url
    assert_response :success
  end
end
