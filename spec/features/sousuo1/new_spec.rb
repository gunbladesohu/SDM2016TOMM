require 'rails_helper'

RSpec.feature "Sousuo1", :type => :feature do
  scenario "Create a new search query" do
    visit "/sousuo1s/new"

    fill_in "Title", :with => "Methdology"

    click_button "search"

    expect(page).to have_text("no result!!!")
  end
end