require "application_system_test_case"

class RepliesTest < ApplicationSystemTestCase
  setup do
    @reply = replies(:one)
  end

  test "visiting the index" do
    visit replies_url
    assert_selector "h1", text: "Replies"
  end

  test "creating a Reply" do
    visit replies_url
    click_on "New Reply"

    fill_in "Blog", with: @reply.blog_id
    fill_in "Text", with: @reply.text
    fill_in "User", with: @reply.user_id
    click_on "Create Reply"

    assert_text "Reply was successfully created"
    click_on "Back"
  end

  test "updating a Reply" do
    visit replies_url
    click_on "Edit", match: :first

    fill_in "Blog", with: @reply.blog_id
    fill_in "Text", with: @reply.text
    fill_in "User", with: @reply.user_id
    click_on "Update Reply"

    assert_text "Reply was successfully updated"
    click_on "Back"
  end

  test "destroying a Reply" do
    visit replies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reply was successfully destroyed"
  end
end
