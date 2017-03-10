Feature: Digital order checkout
  I can buy an ebook
  As a customer
  Without entering shipping information


  Scenario: I can buy an eBook
    Given I am on "/product/3"
      Then I should see "Drupal 8 Development Cookbook"
    When I press "Add to cart"
      Then I should see "Drupal 8 Development Cookbook added to your cart."
      And I click "your cart"
      And I press "Checkout"
    Then I fill in the following:
    | payment_information[add_payment_method][payment_details][security_code]                        | 123    |
    | payment_information[add_payment_method][billing_information][address][0][address][given_name]  | John   |
    | payment_information[add_payment_method][billing_information][address][0][address][family_name] | Doe    |
    | payment_information[add_payment_method][billing_information][address][0][address][address_line1]                               | 222222 |
    | payment_information[add_payment_method][billing_information][address][0][address][postal_code]                                 | 94043  |
    | payment_information[add_payment_method][billing_information][address][0][address][locality] | Mountain View |
    | payment_information[add_payment_method][billing_information][address][0][address][administrative_area] | CA |
    And I press "Continue to review"
    And I press "Pay and complete purchase"
    Then I should see "You can view your order on your account page when logged in"