
Given(/^user is logged in and search page is displayed/) do
  visit books_path
end


  When(/^user unchecks Title checkbox$/) do
    check("Title") 
    
  end
  

  Then(/^user should not be able to see the Title Column in results$/) do 
    
    #expect(page).to have_content("Show")
    #page.has_field("Search")
    page.has_unchecked_field?("Title") 
  
  end
