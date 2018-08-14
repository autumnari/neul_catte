require 'test_helper'

class TeasersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teasers_index_url
    assert_response :success
  end

end
