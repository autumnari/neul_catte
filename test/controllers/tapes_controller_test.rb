require 'test_helper'

class TapesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tapes_index_url
    assert_response :success
  end

end
