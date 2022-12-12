require "test_helper"

class PolicyValueTokensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @policy_value_token = policy_value_tokens(:one)
  end

  test "should get index" do
    get policy_value_tokens_url, as: :json
    assert_response :success
  end

  test "should create policy_value_token" do
    assert_difference("PolicyValueToken.count") do
      post policy_value_tokens_url, params: { policy_value_token: { description: @policy_value_token.description, token: @policy_value_token.token } }, as: :json
    end

    assert_response :created
  end

  test "should show policy_value_token" do
    get policy_value_token_url(@policy_value_token), as: :json
    assert_response :success
  end

  test "should update policy_value_token" do
    patch policy_value_token_url(@policy_value_token), params: { policy_value_token: { description: @policy_value_token.description, token: @policy_value_token.token } }, as: :json
    assert_response :success
  end

  test "should destroy policy_value_token" do
    assert_difference("PolicyValueToken.count", -1) do
      delete policy_value_token_url(@policy_value_token), as: :json
    end

    assert_response :no_content
  end
end
