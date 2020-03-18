require "application_system_test_case"

class WebappsTest < ApplicationSystemTestCase
  setup do
    @webapp = webapps(:one)
  end

  test "visiting the index" do
    visit webapps_url
    assert_selector "h1", text: "Webapps"
  end

  test "creating a Webapp" do
    visit webapps_url
    click_on "New Webapp"

    fill_in "Element", with: @webapp.element
    fill_in "Name", with: @webapp.name
    click_on "Create Webapp"

    assert_text "Webapp was successfully created"
    click_on "Back"
  end

  test "updating a Webapp" do
    visit webapps_url
    click_on "Edit", match: :first

    fill_in "Element", with: @webapp.element
    fill_in "Name", with: @webapp.name
    click_on "Update Webapp"

    assert_text "Webapp was successfully updated"
    click_on "Back"
  end

  test "destroying a Webapp" do
    visit webapps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Webapp was successfully destroyed"
  end
end
