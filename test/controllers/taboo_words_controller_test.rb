require "test_helper"

class TabooWordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taboo_word = taboo_words(:one)
  end

  test "should get index" do
    get taboo_words_url
    assert_response :success
  end

  test "should get new" do
    get new_taboo_word_url
    assert_response :success
  end

  test "should create taboo_word" do
    assert_difference("TabooWord.count") do
      post taboo_words_url, params: { taboo_word: { main_word: @taboo_word.main_word, secondary_word1: @taboo_word.secondary_word1, secondary_word2: @taboo_word.secondary_word2, secondary_word3: @taboo_word.secondary_word3, secondary_word4: @taboo_word.secondary_word4, secondary_word5: @taboo_word.secondary_word5 } }
    end

    assert_redirected_to taboo_word_url(TabooWord.last)
  end

  test "should show taboo_word" do
    get taboo_word_url(@taboo_word)
    assert_response :success
  end

  test "should get edit" do
    get edit_taboo_word_url(@taboo_word)
    assert_response :success
  end

  test "should update taboo_word" do
    patch taboo_word_url(@taboo_word), params: { taboo_word: { main_word: @taboo_word.main_word, secondary_word1: @taboo_word.secondary_word1, secondary_word2: @taboo_word.secondary_word2, secondary_word3: @taboo_word.secondary_word3, secondary_word4: @taboo_word.secondary_word4, secondary_word5: @taboo_word.secondary_word5 } }
    assert_redirected_to taboo_word_url(@taboo_word)
  end

  test "should destroy taboo_word" do
    assert_difference("TabooWord.count", -1) do
      delete taboo_word_url(@taboo_word)
    end

    assert_redirected_to taboo_words_url
  end
end
