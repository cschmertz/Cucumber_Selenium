Feature: I should be able to login to the bookstore

  @parallel
  @Login @Regression @HappyPath
  Scenario: I should be able to login to bookstore with positive credentials
    Given I am on bookstore login page
    When I enter credentials
    Then I should be logged in

  @Login @Regression @SadPath
  Scenario: I should not be able to login to bookstore with negative credentials
      Given I am on bookstore login page
      When I enter incorrect credentials
      Then I should see an error message