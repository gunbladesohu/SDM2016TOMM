Feature: Search Button Check 
  Scenario: The user sees the search page
    Given user is logged in as a registered user
    When user sees the search page as a registered user
    Then user should be able to see search button
