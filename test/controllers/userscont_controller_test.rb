require 'test_helper'

class UserscontControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get userscont_new_url
    assert_response :success
  end

end
