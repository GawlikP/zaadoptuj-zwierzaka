require "test_helper"

class DogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog = dogs(:one)
  end

  test "should get index" do
    get dogs_url
    assert_response :success
  end

  test "should get new" do
    get new_dog_url
    assert_response :success
  end

  test "should create dog" do
    assert_difference('Dog.count') do
      post dogs_url, params: { dog: { animals: @dog.animals, apartment_size: @dog.apartment_size, birth_date: @dog.birth_date, breed: @dog.breed, childrens: @dog.childrens, coat: @dog.coat, description: @dog.description, disposition: @dog.disposition, drooling: @dog.drooling, energy: @dog.energy, gender: @dog.gender, height: @dog.height, localization: @dog.localization, name: @dog.name, noise: @dog.noise, obedience: @dog.obedience, owner_with_dogs: @dog.owner_with_dogs, size: @dog.size, time_to_spent: @dog.time_to_spent, user_id: @dog.user_id, vaccination: @dog.vaccination, weight: @dog.weight } }
    end

    assert_redirected_to dog_url(Dog.last)
  end

  test "should show dog" do
    get dog_url(@dog)
    assert_response :success
  end

  test "should get edit" do
    get edit_dog_url(@dog)
    assert_response :success
  end

  test "should update dog" do
    patch dog_url(@dog), params: { dog: { animals: @dog.animals, apartment_size: @dog.apartment_size, birth_date: @dog.birth_date, breed: @dog.breed, childrens: @dog.childrens, coat: @dog.coat, description: @dog.description, disposition: @dog.disposition, drooling: @dog.drooling, energy: @dog.energy, gender: @dog.gender, height: @dog.height, localization: @dog.localization, name: @dog.name, noise: @dog.noise, obedience: @dog.obedience, owner_with_dogs: @dog.owner_with_dogs, size: @dog.size, time_to_spent: @dog.time_to_spent, user_id: @dog.user_id, vaccination: @dog.vaccination, weight: @dog.weight } }
    assert_redirected_to dog_url(@dog)
  end

  test "should destroy dog" do
    assert_difference('Dog.count', -1) do
      delete dog_url(@dog)
    end

    assert_redirected_to dogs_url
  end
end
