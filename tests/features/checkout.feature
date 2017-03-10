Feature: I can checkout
  I can access checkout
  As a customer
  So I can buy stuff

  Scenario: Anonymous users can access checkout
    When anonymous checkout is enabled
      And I am on "/product/1"
      Then I should see "Commerce Guys Hoodie"
    When I press "Add to cart"
      Then I should see "Commerce Guys Hoodie - Cyan, Small added to your cart."
      And I click "your cart"
    Then I press "Checkout"

  Scenario: Anonymous users cannot access checkout
    When anonymous checkout is disabled
      And I am on "/product/1"
      Then I should see "Commerce Guys Hoodie"
    When I press "Add to cart"
      Then I should see "Commerce Guys Hoodie - Cyan, Small added to your cart."
      And I click "your cart"
    Then I should not see the button "Checkout"
