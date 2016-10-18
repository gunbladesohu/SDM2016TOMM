
Given(/^user is logged in as a registered user/) do
  visit books_path
end


  When(/^user sees the search page as a registered user$/) do
    visit books_path
    #fill_in("search", with: text)
   # page.has_field?("Search", options = {'',''})
  end
  

  Then(/^user should be able to see search button$/) do
    
    #expect(page).to have_content("Show")
    #page.has_field("Search")
    find_button("Search")

  end
