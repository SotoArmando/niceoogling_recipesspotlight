require "application_system_test_case"

class LibretesTest < ApplicationSystemTestCase
  setup do
    @librete = libretes(:one)
  end

  test "visiting the index" do
    visit libretes_url
    assert_selector "h1", text: "Libretes"
  end

  test "should create librete" do
    visit libretes_url
    click_on "New librete"

    fill_in "Librete", with: @librete.librete
    fill_in "User", with: @librete.user_id
    click_on "Create Librete"

    assert_text "Librete was successfully created"
    click_on "Back"
  end

  test "should update Librete" do
    visit librete_url(@librete)
    click_on "Edit this librete", match: :first

    fill_in "Librete", with: @librete.librete
    fill_in "User", with: @librete.user_id
    click_on "Update Librete"

    assert_text "Librete was successfully updated"
    click_on "Back"
  end

  test "should destroy Librete" do
    visit librete_url(@librete)
    click_on "Destroy this librete", match: :first

    assert_text "Librete was successfully destroyed"
  end
end
