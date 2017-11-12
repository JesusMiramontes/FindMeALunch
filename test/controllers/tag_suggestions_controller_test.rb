require 'test_helper'

class TagSuggestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_suggestion = tag_suggestions(:one)
  end

  test "should get index" do
    get tag_suggestions_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_suggestion_url
    assert_response :success
  end

  test "should create tag_suggestion" do
    assert_difference('TagSuggestion.count') do
      post tag_suggestions_url, params: { tag_suggestion: { product_id: @tag_suggestion.product_id, title: @tag_suggestion.title, user_id: @tag_suggestion.user_id } }
    end

    assert_redirected_to tag_suggestion_url(TagSuggestion.last)
  end

  test "should show tag_suggestion" do
    get tag_suggestion_url(@tag_suggestion)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_suggestion_url(@tag_suggestion)
    assert_response :success
  end

  test "should update tag_suggestion" do
    patch tag_suggestion_url(@tag_suggestion), params: { tag_suggestion: { product_id: @tag_suggestion.product_id, title: @tag_suggestion.title, user_id: @tag_suggestion.user_id } }
    assert_redirected_to tag_suggestion_url(@tag_suggestion)
  end

  test "should destroy tag_suggestion" do
    assert_difference('TagSuggestion.count', -1) do
      delete tag_suggestion_url(@tag_suggestion)
    end

    assert_redirected_to tag_suggestions_url
  end
end
