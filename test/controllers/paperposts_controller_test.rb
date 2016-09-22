require 'test_helper'

class PaperpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paperpost = paperposts(:one)
  end

  test "should get index" do
    get paperposts_url
    assert_response :success
  end

  test "should get new" do
    get new_paperpost_url
    assert_response :success
  end

  test "should create paperpost" do
    assert_difference('Paperpost.count') do
      post paperposts_url, params: { paperpost: { articlecategory: @paperpost.articlecategory, author: @paperpost.author, description: @paperpost.description, journalname: @paperpost.journalname, pages: @paperpost.pages, publish_date: @paperpost.publish_date, publishername: @paperpost.publishername, status_type: @paperpost.status_type, submitted_date: @paperpost.submitted_date, title: @paperpost.title, username: @paperpost.username, volume: @paperpost.volume } }
    end

    assert_redirected_to paperpost_url(Paperpost.last)
  end

  test "should show paperpost" do
    get paperpost_url(@paperpost)
    assert_response :success
  end

  test "should get edit" do
    get edit_paperpost_url(@paperpost)
    assert_response :success
  end

  test "should update paperpost" do
    patch paperpost_url(@paperpost), params: { paperpost: { articlecategory: @paperpost.articlecategory, author: @paperpost.author, description: @paperpost.description, journalname: @paperpost.journalname, pages: @paperpost.pages, publish_date: @paperpost.publish_date, publishername: @paperpost.publishername, status_type: @paperpost.status_type, submitted_date: @paperpost.submitted_date, title: @paperpost.title, username: @paperpost.username, volume: @paperpost.volume } }
    assert_redirected_to paperpost_url(@paperpost)
  end

  test "should destroy paperpost" do
    assert_difference('Paperpost.count', -1) do
      delete paperpost_url(@paperpost)
    end

    assert_redirected_to paperposts_url
  end
end
