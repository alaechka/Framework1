Feature: Login

  Scenario: Verify user gets error for invalid credential
    Given I launch facebook website
    When I enter '%^&&*()' as login email
    When I enter 'abcd@1234' as login password
    When I click on login button
    Then I verify login error is displayed

  Scenario: Verify user can login with valid credential
    Given I launch facebook website
    When I enter 'validEmail@gmail.com' as login email
    When I enter 'correctPassword' as login password
    When I click on login button
    Then I verify user lands on home page


  Scenario: Verify user can login with valid credential2
    Given I launch facebook website
    When I enter 'myEmail@gmail.com' as login email
    When I enter 'myPass13' as login password
    When I click on login button
    Then I verify user lands on home page