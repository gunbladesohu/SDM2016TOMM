Feature: Search column selection
  Scenario: As a registered user I should be able to hide the columns list
    Given user is logged in and sees search page
    When user clicks Toggle Columns
    Then user should be able to hide the list of columns
