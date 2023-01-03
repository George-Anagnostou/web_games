require "application_system_test_case"

class TabooWordsTest < ApplicationSystemTestCase
  setup do
    @taboo_word = taboo_words(:one)
  end

  test "visiting the index" do
    visit taboo_words_url
    assert_selector "h1", text: "Taboo words"
  end

  test "should create taboo word" do
    visit taboo_words_url
    click_on "New taboo word"

    fill_in "Main word", with: @taboo_word.main_word
    fill_in "Secondary word1", with: @taboo_word.secondary_word1
    fill_in "Secondary word2", with: @taboo_word.secondary_word2
    fill_in "Secondary word3", with: @taboo_word.secondary_word3
    fill_in "Secondary word4", with: @taboo_word.secondary_word4
    fill_in "Secondary word5", with: @taboo_word.secondary_word5
    click_on "Create Taboo word"

    assert_text "Taboo word was successfully created"
    click_on "Back"
  end

  test "should update Taboo word" do
    visit taboo_word_url(@taboo_word)
    click_on "Edit this taboo word", match: :first

    fill_in "Main word", with: @taboo_word.main_word
    fill_in "Secondary word1", with: @taboo_word.secondary_word1
    fill_in "Secondary word2", with: @taboo_word.secondary_word2
    fill_in "Secondary word3", with: @taboo_word.secondary_word3
    fill_in "Secondary word4", with: @taboo_word.secondary_word4
    fill_in "Secondary word5", with: @taboo_word.secondary_word5
    click_on "Update Taboo word"

    assert_text "Taboo word was successfully updated"
    click_on "Back"
  end

  test "should destroy Taboo word" do
    visit taboo_word_url(@taboo_word)
    click_on "Destroy this taboo word", match: :first

    assert_text "Taboo word was successfully destroyed"
  end
end
