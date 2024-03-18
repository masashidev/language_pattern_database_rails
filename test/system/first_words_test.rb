require "application_system_test_case"

class FirstWordsTest < ApplicationSystemTestCase
  setup do
    @first_word = first_words(:one)
  end

  test "visiting the index" do
    visit first_words_url
    assert_selector "h1", text: "First words"
  end

  test "should create first word" do
    visit first_words_url
    click_on "New first word"

    fill_in "Firstcharacter", with: @first_word.firstCharacter
    fill_in "Language", with: @first_word.language
    fill_in "Word", with: @first_word.word
    click_on "Create First word"

    assert_text "First word was successfully created"
    click_on "Back"
  end

  test "should update First word" do
    visit first_word_url(@first_word)
    click_on "Edit this first word", match: :first

    fill_in "Firstcharacter", with: @first_word.firstCharacter
    fill_in "Language", with: @first_word.language
    fill_in "Word", with: @first_word.word
    click_on "Update First word"

    assert_text "First word was successfully updated"
    click_on "Back"
  end

  test "should destroy First word" do
    visit first_word_url(@first_word)
    click_on "Destroy this first word", match: :first

    assert_text "First word was successfully destroyed"
  end
end
