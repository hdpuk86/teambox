require "test_helper"

class GroupingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grouping = groupings(:one)
  end

  test "should get index" do
    get groupings_url
    assert_response :success
  end

  test "should create grouping" do
    assert_difference('Grouping.count') do
      post groupings_url
    end

    assert_redirected_to groupings_url
    assert_equal 'Grouping was successfully created.', flash.notice
  end

  test "should show grouping" do
    get grouping_url(@grouping)
    assert_response :success
  end

  test "should destroy grouping" do
    assert_difference('Grouping.count', -1) do
      delete grouping_url(@grouping)
    end

    assert_redirected_to groupings_url
  end
end
