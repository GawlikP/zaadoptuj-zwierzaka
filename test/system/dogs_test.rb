require "application_system_test_case"

class DogsTest < ApplicationSystemTestCase
  setup do
    @dog = dogs(:one)
  end

  test "visiting the index" do
    visit dogs_url
    assert_selector "h1", text: "Dogs"
  end

  test "creating a Dog" do
    visit dogs_url
    click_on "New Dog"

    fill_in "Animals", with: @dog.animals
    fill_in "Apartment size", with: @dog.apartment_size
    fill_in "Birth date", with: @dog.birth_date
    fill_in "Breed", with: @dog.breed
    fill_in "Childrens", with: @dog.childrens
    fill_in "Coat", with: @dog.coat
    fill_in "Description", with: @dog.description
    fill_in "Disposition", with: @dog.disposition
    fill_in "Drooling", with: @dog.drooling
    fill_in "Energy", with: @dog.energy
    check "Gender" if @dog.gender
    fill_in "Height", with: @dog.height
    fill_in "Localization", with: @dog.localization
    fill_in "Name", with: @dog.name
    fill_in "Noise", with: @dog.noise
    fill_in "Obedience", with: @dog.obedience
    fill_in "Owner with dogs", with: @dog.owner_with_dogs
    fill_in "Size", with: @dog.size
    fill_in "Time to spent", with: @dog.time_to_spent
    fill_in "User", with: @dog.user_id
    fill_in "Vaccination", with: @dog.vaccination
    fill_in "Weight", with: @dog.weight
    click_on "Create Dog"

    assert_text "Dog was successfully created"
    click_on "Back"
  end

  test "updating a Dog" do
    visit dogs_url
    click_on "Edit", match: :first

    fill_in "Animals", with: @dog.animals
    fill_in "Apartment size", with: @dog.apartment_size
    fill_in "Birth date", with: @dog.birth_date
    fill_in "Breed", with: @dog.breed
    fill_in "Childrens", with: @dog.childrens
    fill_in "Coat", with: @dog.coat
    fill_in "Description", with: @dog.description
    fill_in "Disposition", with: @dog.disposition
    fill_in "Drooling", with: @dog.drooling
    fill_in "Energy", with: @dog.energy
    check "Gender" if @dog.gender
    fill_in "Height", with: @dog.height
    fill_in "Localization", with: @dog.localization
    fill_in "Name", with: @dog.name
    fill_in "Noise", with: @dog.noise
    fill_in "Obedience", with: @dog.obedience
    fill_in "Owner with dogs", with: @dog.owner_with_dogs
    fill_in "Size", with: @dog.size
    fill_in "Time to spent", with: @dog.time_to_spent
    fill_in "User", with: @dog.user_id
    fill_in "Vaccination", with: @dog.vaccination
    fill_in "Weight", with: @dog.weight
    click_on "Update Dog"

    assert_text "Dog was successfully updated"
    click_on "Back"
  end

  test "destroying a Dog" do
    visit dogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dog was successfully destroyed"
  end
end
