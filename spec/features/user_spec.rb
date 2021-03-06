require 'rails_helper'

feature 'Creating a new user' do
  background do
    visit '/'
    click_link 'Register'
  end
  scenario 'can create a new user via the index page' do
    fill_in 'User name', with: 'fenderforlyfe'
    fill_in 'Email', with: 'fenderforlyfe@gibbon.com'
    fill_in 'Password', with: 'gibbonsuck', match: :first
    fill_in 'Password confirmation', with: 'gibbonsuck'

    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end
end