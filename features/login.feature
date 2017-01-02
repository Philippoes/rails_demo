Feature: Login to create articles
  As an owner
  In order to limit the posting ability to verified users only
  I need them to be able to sign up

  Scenario: Visitor logs in and creates an article
    When I am on the landing page
    And I click "Sign up"
    Then I should be on the "Sign up" page
    When I fill in "Email" with "Philip@philip.philip"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I click "Create account"
    Then I should see "Welcome bro! You have signed up successfully."
    And I should be on the create-article page

