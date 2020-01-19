require 'rails_helper'

RSpec.feature "New post", type: :feature do
  scenario "Creating new post should show post" do
    sign_in
    click_on 'New post'

    expect(page).to have_content 'Your feed'
  end
end
