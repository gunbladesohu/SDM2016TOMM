Feature: Search Text Field Check 
  Scenario: The user sees the search page
    Given user is logged in
    When user sees the search page
    Then user should be able to see search text field
