Feature: View a product
  I can view a product
  As a customer
  So I can give you my money.

  Scenario: Viewing product
    Given I am on "/product/1"
    Then I should see "Commerce Guys Hoodie"
      And I should see "Commerce Guys Hoodie - Cyan, Small"
      And I should see "15080-009-SC"
