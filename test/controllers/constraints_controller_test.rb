require "test_helper"

class ConstraintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @constraint = constraints(:one)
  end

  test "should get index" do
    get constraints_url, as: :json
    assert_response :success
  end

  test "should create constraint" do
    assert_difference("Constraint.count") do
      post constraints_url, params: { constraint: { agreggate: @constraint.agreggate, coverage_group_id: @constraint.coverage_group_id, default: @constraint.default, name: @constraint.name, operator: @constraint.operator, optional: @constraint.optional, subject: @constraint.subject, units: @constraint.units, value_token: @constraint.value_token } }, as: :json
    end

    assert_response :created
  end

  test "should show constraint" do
    get constraint_url(@constraint), as: :json
    assert_response :success
  end

  test "should update constraint" do
    patch constraint_url(@constraint), params: { constraint: { agreggate: @constraint.agreggate, coverage_group_id: @constraint.coverage_group_id, default: @constraint.default, name: @constraint.name, operator: @constraint.operator, optional: @constraint.optional, subject: @constraint.subject, units: @constraint.units, value_token: @constraint.value_token } }, as: :json
    assert_response :success
  end

  test "should destroy constraint" do
    assert_difference("Constraint.count", -1) do
      delete constraint_url(@constraint), as: :json
    end

    assert_response :no_content
  end
end
