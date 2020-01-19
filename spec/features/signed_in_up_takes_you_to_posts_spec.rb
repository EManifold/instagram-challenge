require 'rails_helper'

RSpec.feature "Homepage", type: :feature do
  scenario "Successful sign up should take you to all posts" do
    sign_up
    expect(page).to have_content 'Your feed'
  end

  scenario "Successful sign up should take you to all posts" do
    sign_in
    expect(page).to have_content 'Your feed'
  end
end
