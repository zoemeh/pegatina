require "application_system_test_case"

class PastesTest < ApplicationSystemTestCase
  setup do
    @paste = pastes(:one)
  end

  test "visiting the index" do
    visit pastes_url
    assert_selector "h1", text: "Pastes"
  end

  test "should create paste" do
    visit pastes_url
    click_on "New paste"

    fill_in "Body", with: @paste.body
    click_on "Create Paste"

    assert_text "Paste was successfully created"
    click_on "Back"
  end

  test "should update Paste" do
    visit paste_url(@paste)
    click_on "Edit this paste", match: :first

    fill_in "Body", with: @paste.body
    click_on "Update Paste"

    assert_text "Paste was successfully updated"
    click_on "Back"
  end

  test "should destroy Paste" do
    visit paste_url(@paste)
    click_on "Destroy this paste", match: :first

    assert_text "Paste was successfully destroyed"
  end
end
