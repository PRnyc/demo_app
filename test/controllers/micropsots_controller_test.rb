require 'test_helper'

class MicropsotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @micropsot = micropsots(:one)
  end

  test "should get index" do
    get micropsots_url
    assert_response :success
  end

  test "should get new" do
    get new_micropsot_url
    assert_response :success
  end

  test "should create micropsot" do
    assert_difference('Micropsot.count') do
      post micropsots_url, params: { micropsot: { content: @micropsot.content, user_id: @micropsot.user_id } }
    end

    assert_redirected_to micropsot_url(Micropsot.last)
  end

  test "should show micropsot" do
    get micropsot_url(@micropsot)
    assert_response :success
  end

  test "should get edit" do
    get edit_micropsot_url(@micropsot)
    assert_response :success
  end

  test "should update micropsot" do
    patch micropsot_url(@micropsot), params: { micropsot: { content: @micropsot.content, user_id: @micropsot.user_id } }
    assert_redirected_to micropsot_url(@micropsot)
  end

  test "should destroy micropsot" do
    assert_difference('Micropsot.count', -1) do
      delete micropsot_url(@micropsot)
    end

    assert_redirected_to micropsots_url
  end
end
