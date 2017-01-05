Feature: Visitors can comment on published articles
  As a visitor,
  In order to give my opinion on an article,
  I would like to be able to comment on it

  Background:
    Given the following articles exists
  | title                | content                            | user           |
  | A breaking news item | Some really breaking action        |     Thomas           |
  | Learn Rails 5        | Build awesome rails applications   |        Amber        |

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