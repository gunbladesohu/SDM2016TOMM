require 'test_helper'

class SerlerusersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get serlerusers_new_url
    assert_response :success
  end

end
