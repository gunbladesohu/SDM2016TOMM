Feature: Uncheck the columns for displaying results
  Scenario: As a registered user I should be able to uncheck the columns for display
    Given user is logged in and search page is displayed
    When user unchecks Title checkbox
    Then user should not be able to see the Title Column in results
