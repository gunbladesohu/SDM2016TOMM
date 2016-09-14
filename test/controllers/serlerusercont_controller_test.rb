require 'test_helper'

class SerlerusercontControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get serlerusercont_new_url
    assert_response :success
  end

end
