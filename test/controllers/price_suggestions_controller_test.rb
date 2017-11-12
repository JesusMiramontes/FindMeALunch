require 'test_helper'

class PriceSuggestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @price_suggestion = price_suggestions(:one)
  end

  test "should get index" do
    get price_suggestions_url
    assert_response :success
  end

  test "should get new" do
    get new_price_suggestion_url
    assert_response :success
  end

  test "should create price_suggestion" do
    assert_difference('PriceSuggestion.count') do
      post price_suggestions_url, params: { price_suggestion: { price: @price_suggestion.price, product_id: @price_suggestion.product_id, user_id: @price_suggestion.user_id } }
    end

    assert_redirected_to price_suggestion_url(PriceSuggestion.last)
  end

  test "should show price_suggestion" do
    get price_suggestion_url(@price_suggestion)
    assert_response :success
  end

  test "should get edit" do
    get edit_price_suggestion_url(@price_suggestion)
    assert_response :success
  end

  test "should update price_suggestion" do
    patch price_suggestion_url(@price_suggestion), params: { price_suggestion: { price: @price_suggestion.price, product_id: @price_suggestion.product_id, user_id: @price_suggestion.user_id } }
    assert_redirected_to price_suggestion_url(@price_suggestion)
  end

  test "should destroy price_suggestion" do
    assert_difference('PriceSuggestion.count', -1) do
      delete price_suggestion_url(@price_suggestion)
    end

    assert_redirected_to price_suggestions_url
  end
end
