When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see the signup$/) do
  expect(page).to have_content("Sign Up")
end