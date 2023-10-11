require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "h1", text: "Poser une question au coach"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit "/ask"
    fill_in "question", with: "Hello"
    click_button "Ask"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end
end
