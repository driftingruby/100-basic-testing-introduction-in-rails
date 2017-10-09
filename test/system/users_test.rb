require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "User"
  end

  test "should create user" do
    visit new_user_url
    fill_in 'First name', with: 'first name'
    fill_in 'Last name', with: 'last name'
    fill_in 'Email', with: 'user1@example.com'
    click_button 'Create User'

    visit users_url
    within 'table' do
      assert_selector 'tr td', text: 'first name'
      assert_selector 'tr td', text: 'last name'
      assert_selector 'tr td', text: 'user1@example.com'
    end
  end
end
