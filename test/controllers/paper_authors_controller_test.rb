require 'test_helper'

class PaperAuthorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paper_author = paper_authors(:one)
  end

  test "should get index" do
    get paper_authors_url
    assert_response :success
  end

  test "should get new" do
    get new_paper_author_url
    assert_response :success
  end

  test "should create paper_author" do
    assert_difference('PaperAuthor.count') do
      post paper_authors_url, params: { paper_author: {  } }
    end

    assert_redirected_to paper_author_url(PaperAuthor.last)
  end

  test "should show paper_author" do
    get paper_author_url(@paper_author)
    assert_response :success
  end

  test "should get edit" do
    get edit_paper_author_url(@paper_author)
    assert_response :success
  end

  test "should update paper_author" do
    patch paper_author_url(@paper_author), params: { paper_author: {  } }
    assert_redirected_to paper_author_url(@paper_author)
  end

  test "should destroy paper_author" do
    assert_difference('PaperAuthor.count', -1) do
      delete paper_author_url(@paper_author)
    end

    assert_redirected_to paper_authors_url
  end
end
