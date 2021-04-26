require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  setup do
    @question = questions(:one)
  end

  test "visiting the index" do
    visit questions_url
    assert_selector "h1", text: "Questions"
  end

  test "creating a Question" do
    visit questions_url
    click_on "New Question"

    check "Blocked" if @question.blocked
    fill_in "Dog", with: @question.dog_id
    check "Hiden" if @question.hiden
    fill_in "Question", with: @question.question
    check "Reported" if @question.reported
    fill_in "User", with: @question.user_id
    click_on "Create Question"

    assert_text "Question was successfully created"
    click_on "Back"
  end

  test "updating a Question" do
    visit questions_url
    click_on "Edit", match: :first

    check "Blocked" if @question.blocked
    fill_in "Dog", with: @question.dog_id
    check "Hiden" if @question.hiden
    fill_in "Question", with: @question.question
    check "Reported" if @question.reported
    fill_in "User", with: @question.user_id
    click_on "Update Question"

    assert_text "Question was successfully updated"
    click_on "Back"
  end

  test "destroying a Question" do
    visit questions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Question was successfully destroyed"
  end
end
