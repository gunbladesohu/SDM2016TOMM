
Given(/^user is logged in/) do
  visit books_path
end


  When(/^user sees the search page$/) do
    visit books_path
    #fill_in("search", with: text)
   # page.has_field?("Search", options = {'',''})
  end
  

  Then(/^user should be able to see search text field$/) do
    
    #expect(page).to have_content("Show")
    #page.has_field("Search")
    find_field("search")

  end
