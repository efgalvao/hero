require "application_system_test_case"

class PersonasTest < ApplicationSystemTestCase
  setup do
    @persona = personas(:one)
  end

  test "visiting the index" do
    visit personas_url
    assert_selector "h1", text: "Personas"
  end

  test "creating a Persona" do
    visit personas_url
    click_on "New Persona"

    fill_in "Appearance", with: @persona.appearance
    fill_in "Karma", with: @persona.karma
    fill_in "Media", with: @persona.media
    fill_in "Name", with: @persona.name
    click_on "Create Persona"

    assert_text "Persona was successfully created"
    click_on "Back"
  end

  test "updating a Persona" do
    visit personas_url
    click_on "Edit", match: :first

    fill_in "Appearance", with: @persona.appearance
    fill_in "Karma", with: @persona.karma
    fill_in "Media", with: @persona.media
    fill_in "Name", with: @persona.name
    click_on "Update Persona"

    assert_text "Persona was successfully updated"
    click_on "Back"
  end

  test "destroying a Persona" do
    visit personas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Persona was successfully destroyed"
  end
end
