
Given(/^user is logged in and sees search page/) do
  visit books_path
end


  When(/^user clicks Toggle Columns$/) do
    click_on("Toggle Columns")  
  end
  

  Then(/^user should be able to hide the list of columns$/) do 
    
    #expect(page).to have_content("Show")
    #page.has_field("Search")
    page.has_checked_field?("Title") 
    #find_field("Title") 
  
  end
