require "test_helper"

class LibretesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @librete = libretes(:one)
  end

  test "should get index" do
    get libretes_url
    assert_response :success
  end

  test "should get new" do
    get new_librete_url
    assert_response :success
  end

  test "should create librete" do
    assert_difference("Librete.count") do
      post libretes_url, params: { librete: { librete: @librete.librete, user_id: @librete.user_id } }
    end

    assert_redirected_to librete_url(Librete.last)
  end

  test "should show librete" do
    get librete_url(@librete)
    assert_response :success
  end

  test "should get edit" do
    get edit_librete_url(@librete)
    assert_response :success
  end

  test "should update librete" do
    patch librete_url(@librete), params: { librete: { librete: @librete.librete, user_id: @librete.user_id } }
    assert_redirected_to librete_url(@librete)
  end

  test "should destroy librete" do
    assert_difference("Librete.count", -1) do
      delete librete_url(@librete)
    end

    assert_redirected_to libretes_url
  end
end
