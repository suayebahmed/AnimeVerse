require "application_system_test_case"

class ConventionsTest < ApplicationSystemTestCase
  setup do
    @convention = conventions(:one)
  end

  test "visiting the index" do
    visit conventions_url
    assert_selector "h1", text: "Conventions"
  end

  test "should create convention" do
    visit conventions_url
    click_on "New convention"

    fill_in "Description", with: @convention.description
    fill_in "Link", with: @convention.link
    fill_in "Location", with: @convention.location
    fill_in "Price", with: @convention.price
    fill_in "Title", with: @convention.title
    click_on "Create Convention"

    assert_text "Convention was successfully created"
    click_on "Back"
  end

  test "should update Convention" do
    visit convention_url(@convention)
    click_on "Edit this convention", match: :first

    fill_in "Description", with: @convention.description
    fill_in "Link", with: @convention.link
    fill_in "Location", with: @convention.location
    fill_in "Price", with: @convention.price
    fill_in "Title", with: @convention.title
    click_on "Update Convention"

    assert_text "Convention was successfully updated"
    click_on "Back"
  end

  test "should destroy Convention" do
    visit convention_url(@convention)
    click_on "Destroy this convention", match: :first

    assert_text "Convention was successfully destroyed"
  end
end
