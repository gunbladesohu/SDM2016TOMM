
Given(/^user is logged in and views search page/) do
  visit books_path
end


  When(/^user checks Title checkbox$/) do
    check("Title") 
    
  end
  

  Then(/^user should be able to see the Title Column in results$/) do 
    
    #expect(page).to have_content("Show")
    #page.has_field("Search")
    page.has_checked_field?("Title") 
  
  end
