require "test_helper"

class CoverageGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coverage_group = coverage_groups(:one)
  end

  test "should get index" do
    get coverage_groups_url, as: :json
    assert_response :success
  end

  test "should create coverage_group" do
    assert_difference("CoverageGroup.count") do
      post coverage_groups_url, params: { coverage_group: { code: @coverage_group.code, name: @coverage_group.name, product_id: @coverage_group.product_id } }, as: :json
    end

    assert_response :created
  end

  test "should show coverage_group" do
    get coverage_group_url(@coverage_group), as: :json
    assert_response :success
  end

  test "should update coverage_group" do
    patch coverage_group_url(@coverage_group), params: { coverage_group: { code: @coverage_group.code, name: @coverage_group.name, product_id: @coverage_group.product_id } }, as: :json
    assert_response :success
  end

  test "should destroy coverage_group" do
    assert_difference("CoverageGroup.count", -1) do
      delete coverage_group_url(@coverage_group), as: :json
    end

    assert_response :no_content
  end
end
