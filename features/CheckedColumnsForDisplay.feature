Feature: Check the columns for displaying results
  Scenario: As a registered user I should be able to check the columns for display
    Given user is logged in and views search page
    When user checks Title checkbox
    Then user should be able to see the Title Column in results
