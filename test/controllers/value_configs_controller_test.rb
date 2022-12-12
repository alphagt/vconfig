require "test_helper"

class ValueConfigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @value_config = value_configs(:one)
  end

  test "should get index" do
    get value_configs_url, as: :json
    assert_response :success
  end

  test "should create value_config" do
    assert_difference("ValueConfig.count") do
      post value_configs_url, params: { value_config: { constraint_id: @value_config.constraint_id, default_value: @value_config.default_value, max_value: @value_config.max_value, min_value: @value_config.min_value } }, as: :json
    end

    assert_response :created
  end

  test "should show value_config" do
    get value_config_url(@value_config), as: :json
    assert_response :success
  end

  test "should update value_config" do
    patch value_config_url(@value_config), params: { value_config: { constraint_id: @value_config.constraint_id, default_value: @value_config.default_value, max_value: @value_config.max_value, min_value: @value_config.min_value } }, as: :json
    assert_response :success
  end

  test "should destroy value_config" do
    assert_difference("ValueConfig.count", -1) do
      delete value_config_url(@value_config), as: :json
    end

    assert_response :no_content
  end
end
