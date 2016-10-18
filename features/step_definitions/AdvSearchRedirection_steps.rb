
Given(/^As a registered user, the user sees the search page$/) do
  visit books_path
end
  
  
  When(/^user clicks on Advanced Search$/) do
    click_link("Advanced search")  
  end
  # When(/^user clicks search button on the search serler page$/) do
  #   visit root_path
  # end

  Then(/^user should be redirected to Advanced search page$/) do
    
    visit sousuo1s_path
  end
