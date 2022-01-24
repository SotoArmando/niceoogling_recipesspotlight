require "test_helper"

class TastydescendantControllerTest < ActionDispatch::IntegrationTest
  test "should get listrecipes" do
    get tastydescendant_listrecipes_url
    assert_response :success
  end

  test "should get detailrecipe" do
    get tastydescendant_detailrecipe_url
    assert_response :success
  end

  test "should get listtags" do
    get tastydescendant_listtags_url
    assert_response :success
  end

  test "should get listfeeds" do
    get tastydescendant_listfeeds_url
    assert_response :success
  end

  test "should get listsimilarities" do
    get tastydescendant_listsimilarities_url
    assert_response :success
  end

  test "should get autocomplete" do
    get tastydescendant_autocomplete_url
    assert_response :success
  end
end
