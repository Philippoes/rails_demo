Feature: Login to create articles
  As an owner
  In order to limit the posting ability to verified users only
  I need them to be able to sign up

  Scenario: Visitor logs in and creates an article
    When I click "Sign up"
    And I fill in "Username" with "Philip1"
    And I fill in "Email" with "Philip@philip.philip"
    And I fill in "Password" with "password"
    And I click "Create account"
    Then I should be on create-article page

