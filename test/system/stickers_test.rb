require "application_system_test_case"

class StickersTest < ApplicationSystemTestCase
  setup do
    @sticker = stickers(:one)
  end

  test "visiting the index" do
    visit stickers_url
    assert_selector "h1", text: "Stickers"
  end

  test "creating a Sticker" do
    visit stickers_url
    click_on "New Sticker"

    fill_in "Goal", with: @sticker.goal_id
    fill_in "Icon", with: @sticker.icon
    check "Rating" if @sticker.rating
    click_on "Create Sticker"

    assert_text "Sticker was successfully created"
    click_on "Back"
  end

  test "updating a Sticker" do
    visit stickers_url
    click_on "Edit", match: :first

    fill_in "Goal", with: @sticker.goal_id
    fill_in "Icon", with: @sticker.icon
    check "Rating" if @sticker.rating
    click_on "Update Sticker"

    assert_text "Sticker was successfully updated"
    click_on "Back"
  end

  test "destroying a Sticker" do
    visit stickers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sticker was successfully destroyed"
  end
end
