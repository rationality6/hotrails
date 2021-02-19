require "application_system_test_case"

class Tweet02sTest < ApplicationSystemTestCase
  setup do
    @tweet02 = tweet02s(:one)
  end

  test "visiting the index" do
    visit tweet02s_url
    assert_selector "h1", text: "Tweet02s"
  end

  test "creating a Tweet02" do
    visit tweet02s_url
    click_on "New Tweet02"

    fill_in "Body", with: @tweet02.body
    click_on "Create Tweet02"

    assert_text "Tweet02 was successfully created"
    click_on "Back"
  end

  test "updating a Tweet02" do
    visit tweet02s_url
    click_on "Edit", match: :first

    fill_in "Body", with: @tweet02.body
    click_on "Update Tweet02"

    assert_text "Tweet02 was successfully updated"
    click_on "Back"
  end

  test "destroying a Tweet02" do
    visit tweet02s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tweet02 was successfully destroyed"
  end
end
