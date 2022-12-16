require "test_helper"

class PvlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pvlist = pvlists(:one)
  end

  test "should get index" do
    get pvlists_url, as: :json
    assert_response :success
  end

  test "should create pvlist" do
    assert_difference("Pvlist.count") do
      post pvlists_url, params: { pvlist: { provider: @pvlist.provider, pvtoken: @pvlist.pvtoken } }, as: :json
    end

    assert_response :created
  end

  test "should show pvlist" do
    get pvlist_url(@pvlist), as: :json
    assert_response :success
  end

  test "should update pvlist" do
    patch pvlist_url(@pvlist), params: { pvlist: { provider: @pvlist.provider, pvtoken: @pvlist.pvtoken } }, as: :json
    assert_response :success
  end

  test "should destroy pvlist" do
    assert_difference("Pvlist.count", -1) do
      delete pvlist_url(@pvlist), as: :json
    end

    assert_response :no_content
  end
end
