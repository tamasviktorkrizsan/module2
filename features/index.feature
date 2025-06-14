Feature: index


@UC-1
  Scenario: User changes language
    
    Given the user is on the index page
    When the user clicks on the language selector
    And the user clicks the language button DE
    Then the user redirected to the index page with text Sortieren



@UC-2
  Scenario Outline: User using search with results
    
    Given the user is on the index page
    When the user clicks on the search box
    And the user types text "<searchText>"
    And the user clicks the Search button
    Then the product with the name "<resultText>" will be displayed

  Examples:
    | searchText | resultText |
    | Wood Saw   | Wood Saw   |



@UC-3
  Scenario Outline: User using search with no results
    
    Given the user is on the index page
    When the user clicks on the search box
    And the user types text "<searchText>"
    And the user clicks the Search button
    Then the text "<resultText>" will be displayed

  Examples:
    | searchText | resultText                  |
    | Wood Saw   | There are no products found |      
 