# As a registered user of SERLER I want to be able to search for empirical evidence on 
# different methods based on different constraints so that I can make informed decisions. 
# NOTE: Things like the SE method, the research method, a date range, an author, 
# the credibility rating, the benefit being tested. Any combination of these should be 
# possible for a search as inclusion an/or exclusion criteria. test

Feature: Search SERLER 
  Scenario: user sees the search page and serach SERLER
    Given user is logged in and sees the search page
    When user enters search keyword Waterfall on the search serler page with Waterfall
    When user clicks search button on the search serler page
     # And user selects research method on the search serler page
        # And user selects date range on the search serler page
        # And user selects author on the search serler page
        # And user selects credibility rating on the search serler page
        # And user selects benefit on the search serler page
    Then user should see the search records
