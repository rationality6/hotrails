require "test_helper"

class Tweet02sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweet02 = tweet02s(:one)
  end

  test "should get index" do
    get tweet02s_url
    assert_response :success
  end

  test "should get new" do
    get new_tweet02_url
    assert_response :success
  end

  test "should create tweet02" do
    assert_difference('Tweet02.count') do
      post tweet02s_url, params: { tweet02: { body: @tweet02.body } }
    end

    assert_redirected_to tweet02_url(Tweet02.last)
  end

  test "should show tweet02" do
    get tweet02_url(@tweet02)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweet02_url(@tweet02)
    assert_response :success
  end

  test "should update tweet02" do
    patch tweet02_url(@tweet02), params: { tweet02: { body: @tweet02.body } }
    assert_redirected_to tweet02_url(@tweet02)
  end

  test "should destroy tweet02" do
    assert_difference('Tweet02.count', -1) do
      delete tweet02_url(@tweet02)
    end

    assert_redirected_to tweet02s_url
  end
end
