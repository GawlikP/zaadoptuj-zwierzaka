require "test_helper"

class AdoptionOffertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adoption_offert = adoption_offerts(:one)
  end

  test "should get index" do
    get adoption_offerts_url
    assert_response :success
  end

  test "should get new" do
    get new_adoption_offert_url
    assert_response :success
  end

  test "should create adoption_offert" do
    assert_difference('AdoptionOffert.count') do
      post adoption_offerts_url, params: { adoption_offert: { answer: @adoption_offert.answer, aproved: @adoption_offert.aproved, context: @adoption_offert.context, readed: @adoption_offert.readed, receiver_id: @adoption_offert.receiver_id, sender_id: @adoption_offert.sender_id } }
    end

    assert_redirected_to adoption_offert_url(AdoptionOffert.last)
  end

  test "should show adoption_offert" do
    get adoption_offert_url(@adoption_offert)
    assert_response :success
  end

  test "should get edit" do
    get edit_adoption_offert_url(@adoption_offert)
    assert_response :success
  end

  test "should update adoption_offert" do
    patch adoption_offert_url(@adoption_offert), params: { adoption_offert: { answer: @adoption_offert.answer, aproved: @adoption_offert.aproved, context: @adoption_offert.context, readed: @adoption_offert.readed, receiver_id: @adoption_offert.receiver_id, sender_id: @adoption_offert.sender_id } }
    assert_redirected_to adoption_offert_url(@adoption_offert)
  end

  test "should destroy adoption_offert" do
    assert_difference('AdoptionOffert.count', -1) do
      delete adoption_offert_url(@adoption_offert)
    end

    assert_redirected_to adoption_offerts_url
  end
end
