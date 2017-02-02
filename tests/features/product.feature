Feature: View a product
  I can view a product
  As a customer
  So I can give you my money.

  Scenario: Viewing product
    Given I am on "/product/1"
    Then I should see "Commerce Guys Hoodie"
      And I should see "Commerce Guys Hoodie - Cyan, Small"
      And I should see "15080-009-SC"

  @javascript
  Scenario: Changing product attributes in the cart
    Given I am on "/product/1"
    When I select "Yellow" from "Color"
      And I wait for AJAX to finish
    Then I should see "Commerce Guys Hoodie - Yellow, Small"
      And I should see "15080-009-SY"
    When I select "Large" from "Size"
      And I wait for AJAX to finish
    Then I should see "Commerce Guys Hoodie - Yellow, Large"
      And I should see "15080-009-LY"
    When I select "Cyan" from "Color"
      And I wait for AJAX to finish
    Then I should see "Commerce Guys Hoodie - Cyan, Large"
      And I should see "15080-009-LC"

  @javascript
  Scenario: Select a variation and add to cart
    Given I am on "/product/1"
    When I select "Large" from "Size"
      And I wait for AJAX to finish
    Then I should see "Commerce Guys Hoodie - Cyan, Large"
      And I should see "15080-009-LC"
    When I press "Add to cart"
      Then I should see "Commerce Guys Hoodie - Cyan, Large added to your cart."
