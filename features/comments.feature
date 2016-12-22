Feature: Visitors can comment on published articles
  As a visitor,
  In order to give my opinion on an article,
  I would like to be able to comment on it

  Background:
    Given the following articles exists
  | title                | content                            | author |
  | A breaking news item | Some really breaking action        | Thomas |
  | Learn Rails 5        | Build awesome rails applications   | Amber  |

  Scenario: Visitor comments an article.
    When I am on the landing page
    And I focus on article "Learn Rails 5"
    And I fill in "Email" with "philip.zdb@gmail.com"
    And I fill in "Comment" with "Great Article!"
    And I click "Post"
    Then I should see "Great Article!"