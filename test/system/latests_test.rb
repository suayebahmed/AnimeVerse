require "application_system_test_case"

class LatestsTest < ApplicationSystemTestCase
  setup do
    @latest = latests(:one)
  end

  test "visiting the index" do
    visit latests_url
    assert_selector "h1", text: "Latests"
  end

  test "should create latest" do
    visit latests_url
    click_on "New latest"

    check "Allow comments" if @latest.allow_comments
    fill_in "Description", with: @latest.description
    fill_in "Latitude", with: @latest.latitude
    fill_in "Longitude", with: @latest.longitude
    check "Show likes counter" if @latest.show_likes_counter
    fill_in "User", with: @latest.user_id
    click_on "Create Latest"

    assert_text "Latest was successfully created"
    click_on "Back"
  end

  test "should update Latest" do
    visit latest_url(@latest)
    click_on "Edit this latest", match: :first

    check "Allow comments" if @latest.allow_comments
    fill_in "Description", with: @latest.description
    fill_in "Latitude", with: @latest.latitude
    fill_in "Longitude", with: @latest.longitude
    check "Show likes counter" if @latest.show_likes_counter
    fill_in "User", with: @latest.user_id
    click_on "Update Latest"

    assert_text "Latest was successfully updated"
    click_on "Back"
  end

  test "should destroy Latest" do
    visit latest_url(@latest)
    click_on "Destroy this latest", match: :first

    assert_text "Latest was successfully destroyed"
  end
end
