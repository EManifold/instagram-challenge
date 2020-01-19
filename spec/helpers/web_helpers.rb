def sign_up
  visit '/users/sign_up'
  fill_in "Email", with: 'email@example.com'
  fill_in "Password", with: 'password'
  fill_in "Password confirmation", with: 'password'
  click_on 'Sign up'
end

def sign_in
  visit '/users/sign_up'
  fill_in "Email", with: 'email@example.com'
  fill_in "Password", with: 'password'
  fill_in "Password confirmation", with: 'password'
  click_on "Sign up"

  click_on "Sign out"

  click_on "Log In"

  fill_in "Email", with: 'email@example.com'
  fill_in "Password", with: 'password'
  click_on "Log in"
end
