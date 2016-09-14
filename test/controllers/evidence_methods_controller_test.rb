require 'test_helper'

class EvidenceMethodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evidence_method = evidence_methods(:one)
  end

  test "should get index" do
    get evidence_methods_url
    assert_response :success
  end

  test "should get new" do
    get new_evidence_method_url
    assert_response :success
  end

  test "should create evidence_method" do
    assert_difference('EvidenceMethod.count') do
      post evidence_methods_url, params: { evidence_method: {  } }
    end

    assert_redirected_to evidence_method_url(EvidenceMethod.last)
  end

  test "should show evidence_method" do
    get evidence_method_url(@evidence_method)
    assert_response :success
  end

  test "should get edit" do
    get edit_evidence_method_url(@evidence_method)
    assert_response :success
  end

  test "should update evidence_method" do
    patch evidence_method_url(@evidence_method), params: { evidence_method: {  } }
    assert_redirected_to evidence_method_url(@evidence_method)
  end

  test "should destroy evidence_method" do
    assert_difference('EvidenceMethod.count', -1) do
      delete evidence_method_url(@evidence_method)
    end

    assert_redirected_to evidence_methods_url
  end
end
