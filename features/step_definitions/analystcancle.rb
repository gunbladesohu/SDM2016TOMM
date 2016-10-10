When(/^I go to the analystnew page$/) do
  visit analystnew_path
end

Then(/^I should see the Cancel$/) do
  expect(page).to have_content("Cancle")
end