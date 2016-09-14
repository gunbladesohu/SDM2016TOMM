require 'test_helper'

class UserentriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userentry = userentries(:one)
  end

  test "should get index" do
    get userentries_url
    assert_response :success
  end

  test "should get new" do
    get new_userentry_url
    assert_response :success
  end

  test "should create userentry" do
    assert_difference('Userentry.count') do
      post userentries_url, params: { userentry: { email: @userentry.email, first_name: @userentry.first_name, last_name: @userentry.last_name, password: 'secret', password_confirmation: 'secret' } }
    end

    assert_redirected_to userentry_url(Userentry.last)
  end

  test "should show userentry" do
    get userentry_url(@userentry)
    assert_response :success
  end

  test "should get edit" do
    get edit_userentry_url(@userentry)
    assert_response :success
  end

  test "should update userentry" do
    patch userentry_url(@userentry), params: { userentry: { email: @userentry.email, first_name: @userentry.first_name, last_name: @userentry.last_name, password: 'secret', password_confirmation: 'secret' } }
    assert_redirected_to userentry_url(@userentry)
  end

  test "should destroy userentry" do
    assert_difference('Userentry.count', -1) do
      delete userentry_url(@userentry)
    end

    assert_redirected_to userentries_url
  end
end
