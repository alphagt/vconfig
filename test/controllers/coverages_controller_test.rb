require "test_helper"

class CoveragesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coverage = coverages(:one)
  end

  test "should get index" do
    get coverages_url, as: :json
    assert_response :success
  end

  test "should create coverage" do
    assert_difference("Coverage.count") do
      post coverages_url, params: { coverage: { carrier: @coverage.carrier, code: @coverage.code, name: @coverage.name, type: @coverage.type, version: @coverage.version } }, as: :json
    end

    assert_response :created
  end

  test "should show coverage" do
    get coverage_url(@coverage), as: :json
    assert_response :success
  end

  test "should update coverage" do
    patch coverage_url(@coverage), params: { coverage: { carrier: @coverage.carrier, code: @coverage.code, name: @coverage.name, type: @coverage.type, version: @coverage.version } }, as: :json
    assert_response :success
  end

  test "should destroy coverage" do
    assert_difference("Coverage.count", -1) do
      delete coverage_url(@coverage), as: :json
    end

    assert_response :no_content
  end
end
