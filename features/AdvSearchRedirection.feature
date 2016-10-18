
Feature: Advance Search Redirection 
  Scenario: As a registered user, the user sees the search page
    Given user is logged in and sees the search page
    When user clicks on Advanced Search
    Then user should be redirected to Advanced search page
