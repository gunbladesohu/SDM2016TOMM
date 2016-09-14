require 'test_helper'

class SeMethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @se_method = se_methods(:one)
  end

  test "should get index" do
    get se_methods_url
    assert_response :success
  end

  test "should get new" do
    get new_se_method_url
    assert_response :success
  end

  test "should create se_method" do
    assert_difference('SeMethod.count') do
      post se_methods_url, params: { se_method: {  } }
    end

    assert_redirected_to se_method_url(SeMethod.last)
  end

  test "should show se_method" do
    get se_method_url(@se_method)
    assert_response :success
  end

  test "should get edit" do
    get edit_se_method_url(@se_method)
    assert_response :success
  end

  test "should update se_method" do
    patch se_method_url(@se_method), params: { se_method: {  } }
    assert_redirected_to se_method_url(@se_method)
  end

  test "should destroy se_method" do
    assert_difference('SeMethod.count', -1) do
      delete se_method_url(@se_method)
    end

    assert_redirected_to se_methods_url
  end
end
