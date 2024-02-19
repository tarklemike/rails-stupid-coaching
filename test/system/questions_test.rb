require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # ask_url = 'http://localhost:3000'

  test "visiting /ask renders the form" do
    visit "/"
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit "/"
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "asking a question also a grumpy response from the coach" do
    visit "/"
    fill_in "question", with: "What's the time?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end

  test "telling the coach I am going to work gets a positive response" do
    visit "/"
    fill_in "question", with: "I am going to wk"
    click_on "Ask"

    assert_text "Great!"
  end
end
