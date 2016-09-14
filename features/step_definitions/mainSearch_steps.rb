Given(/^user is logged in and sees the search page$/) do
  visit root_path
end

  When(/^user selects research method on the search serler page$/) do 
    pending # Write code here that turns the phrase above into concrete actions
  end

  When(/^user selects date range on the search serler page$/) do
    pending # Write code here that turns the phrase above into concrete actions
  end

  When(/^user selects author on the search serler page$/) do
    pending # Write code here that turns the phrase above into concrete actions
  end

  When(/^user selects credibility rating on the search serler page$/) do
    pending # Write code here that turns the phrase above into concrete actions
  end

  When(/^user selects benefit on the search serler page$/) do
    pending # Write code here that turns the phrase above into concrete actions
  end

  When(/^user selects SE method on the search serler page$/) do
    visit root_path
  end

  Then(/^user should see the search records$/) do
    
    expect(page).to have_content("The search results are given")

  end
