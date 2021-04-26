require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "creating a Profile" do
    visit profiles_url
    click_on "New Profile"

    fill_in "Age", with: @profile.age
    fill_in "Animal experience", with: @profile.animal_experience
    fill_in "Apartment", with: @profile.apartment
    fill_in "Description", with: @profile.description
    fill_in "Finance", with: @profile.finance
    fill_in "Garden", with: @profile.garden
    fill_in "Time to spent", with: @profile.time_to_spent
    fill_in "User", with: @profile.user_id
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "updating a Profile" do
    visit profiles_url
    click_on "Edit", match: :first

    fill_in "Age", with: @profile.age
    fill_in "Animal experience", with: @profile.animal_experience
    fill_in "Apartment", with: @profile.apartment
    fill_in "Description", with: @profile.description
    fill_in "Finance", with: @profile.finance
    fill_in "Garden", with: @profile.garden
    fill_in "Time to spent", with: @profile.time_to_spent
    fill_in "User", with: @profile.user_id
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile" do
    visit profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile was successfully destroyed"
  end
end
