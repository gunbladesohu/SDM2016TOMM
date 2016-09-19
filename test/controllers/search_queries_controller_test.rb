require 'test_helper'

class SearchQueriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @search_query = search_queries(:one)
  end

  test "should get index" do
    get search_queries_url
    assert_response :success
  end

  test "should get new" do
    get new_search_query_url
    assert_response :success
  end

  test "should create search_query" do
    assert_difference('SearchQuery.count') do
      post search_queries_url, params: { search_query: { author: @search_query.author, credibility_rate: @search_query.credibility_rate, date_range: @search_query.date_range, participant1: @search_query.participant1, participant2: @search_query.participant2, participant3: @search_query.participant3, participant4: @search_query.participant4, research_method_field1: @search_query.research_method_field1, research_method_field2: @search_query.research_method_field2, research_method_field3: @search_query.research_method_field3, research_method_field4: @search_query.research_method_field4, research_metric: @search_query.research_metric, se_method: @search_query.se_method } }
    end

    assert_redirected_to search_query_url(SearchQuery.last)
  end

  test "should show search_query" do
    get search_query_url(@search_query)
    assert_response :success
  end

  test "should get edit" do
    get edit_search_query_url(@search_query)
    assert_response :success
  end

  test "should update search_query" do
    patch search_query_url(@search_query), params: { search_query: { author: @search_query.author, credibility_rate: @search_query.credibility_rate, date_range: @search_query.date_range, participant1: @search_query.participant1, participant2: @search_query.participant2, participant3: @search_query.participant3, participant4: @search_query.participant4, research_method_field1: @search_query.research_method_field1, research_method_field2: @search_query.research_method_field2, research_method_field3: @search_query.research_method_field3, research_method_field4: @search_query.research_method_field4, research_metric: @search_query.research_metric, se_method: @search_query.se_method } }
    assert_redirected_to search_query_url(@search_query)
  end

  test "should destroy search_query" do
    assert_difference('SearchQuery.count', -1) do
      delete search_query_url(@search_query)
    end

    assert_redirected_to search_queries_url
  end
end
