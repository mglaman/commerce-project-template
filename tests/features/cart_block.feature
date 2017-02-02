Feature: Cart block
  I should see the cart block
  As a customer
  So that I can work with my order

  Scenario: I can see the cart block
    Given I am on the homepage
    Then I should see "0 items"
