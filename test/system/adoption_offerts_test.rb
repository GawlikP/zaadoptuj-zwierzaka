require "application_system_test_case"

class AdoptionOffertsTest < ApplicationSystemTestCase
  setup do
    @adoption_offert = adoption_offerts(:one)
  end

  test "visiting the index" do
    visit adoption_offerts_url
    assert_selector "h1", text: "Adoption Offerts"
  end

  test "creating a Adoption offert" do
    visit adoption_offerts_url
    click_on "New Adoption Offert"

    fill_in "Answer", with: @adoption_offert.answer
    check "Aproved" if @adoption_offert.aproved
    fill_in "Context", with: @adoption_offert.context
    check "Readed" if @adoption_offert.readed
    fill_in "Receiver", with: @adoption_offert.receiver_id
    fill_in "Sender", with: @adoption_offert.sender_id
    click_on "Create Adoption offert"

    assert_text "Adoption offert was successfully created"
    click_on "Back"
  end

  test "updating a Adoption offert" do
    visit adoption_offerts_url
    click_on "Edit", match: :first

    fill_in "Answer", with: @adoption_offert.answer
    check "Aproved" if @adoption_offert.aproved
    fill_in "Context", with: @adoption_offert.context
    check "Readed" if @adoption_offert.readed
    fill_in "Receiver", with: @adoption_offert.receiver_id
    fill_in "Sender", with: @adoption_offert.sender_id
    click_on "Update Adoption offert"

    assert_text "Adoption offert was successfully updated"
    click_on "Back"
  end

  test "destroying a Adoption offert" do
    visit adoption_offerts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adoption offert was successfully destroyed"
  end
end
