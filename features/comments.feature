Feature: Visitors can comment on published articles
  As a visitor,
  In order to give my opinion on an article,
  I would like to be able to comment on it

  Background:
    Given that there is an article with title: "A breaking news item" and content: "Some really breaking action" made by a user with email "amber@random.com"
    And that there is an article with title: "Learn Rails 5" and content: "Build awesome rails applications" made by a user with email "thomas@random.com"

  Scenario: Visitor comments an article.
    When I am on the "landing" page
    And I focus on article "Learn Rails 5"
    And I fill in "Email" with "philip.zdb@gmail.com"
    And I fill in "Comment" with "Great Article!"
    And I click "Post"
    Then I should see "philip.zdb@gmail.com: Great Article!"

  Scenario: Visitor invalid email sad path
    When I am on the "landing" page
    And I focus on article "Learn Rails 5"
    And I fill in "Email" with "philip.zdb@gmail"
    And I fill in "Comment" with "Great Article!"
    And I click "Post"
    Then I should see "Email is invalid"