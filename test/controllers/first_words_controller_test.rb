require "test_helper"

class FirstWordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @first_word = first_words(:one)
  end

  test "should get index" do
    get first_words_url
    assert_response :success
  end

  test "should get new" do
    get new_first_word_url
    assert_response :success
  end

  test "should create first_word" do
    assert_difference("FirstWord.count") do
      post first_words_url, params: { first_word: { firstCharacter: @first_word.firstCharacter, language: @first_word.language, word: @first_word.word } }
    end

    assert_redirected_to first_word_url(FirstWord.last)
  end

  test "should show first_word" do
    get first_word_url(@first_word)
    assert_response :success
  end

  test "should get edit" do
    get edit_first_word_url(@first_word)
    assert_response :success
  end

  test "should update first_word" do
    patch first_word_url(@first_word), params: { first_word: { firstCharacter: @first_word.firstCharacter, language: @first_word.language, word: @first_word.word } }
    assert_redirected_to first_word_url(@first_word)
  end

  test "should destroy first_word" do
    assert_difference("FirstWord.count", -1) do
      delete first_word_url(@first_word)
    end

    assert_redirected_to first_words_url
  end
end
