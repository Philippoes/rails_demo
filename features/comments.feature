Feature: Visitors can comment on published articles
  As a visitor,
  In order to give my opinion on an article,
  I would like to be able to comment on it

  Background:
    Given the following articles exists
  | title                | content                            | author |
  | Learn Rails 5        | Build awesome rails applications   | Amber  |

    And there is a comment with content "Awesome!", by "Philip" on "Learn Rails 5"

  Scenario: Visitor sees a comment on an article
    When I am on the landing page
    Then I should see "Awesome!"

  Scenario: Visitor comments an article.
    When I am on the landing page
    And I fill in "Add a comment..." with "Great Article!"
    And I click "Post"
    Then I should see "Great Article!"