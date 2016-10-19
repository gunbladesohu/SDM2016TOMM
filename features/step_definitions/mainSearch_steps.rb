Given(/^user is logged in and sees the search page$/) do
  visit books_path
end
  
  When(/^user enters search keyword (.*?) on the search serler page with (.*?)$/) do  |text_field_tag, text|
    fill_in("search", with: text)
  end
  
  When(/^user clicks search button on the search serler page$/) do
    click_button("Search")  
  end

  # When(/^user clicks search button on the search serler page$/) do
  #   visit root_path
  # end

  Then(/^user should see the search records$/) do 
  #Then(/^user should see the search records with Waterfall (.*?) $/) do |text|
    
    expect(page).to have_content("Show")

  end
