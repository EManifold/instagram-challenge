require 'rails_helper'

RSpec.feature "Homepage", type: :feature do
  scenario "Should show sign in and sign up options" do
    visit '/'
    expect(page).to have_content 'Sign Up'
  end

  scenario "Should show sign in and sign up options" do
    visit '/'
    expect(page).to have_content 'Log In'
  end
end
