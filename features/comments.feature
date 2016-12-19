Feature: Visitors can comment on published articles
  As a visitor,
  In order to give my opinion on an article,
  I would like to be able to comment on it

  Background:
    Given the following articles exists
  | title                | content                            | author | comment  |
  | Learn Rails 5        | Build awesome rails applications   | Amber  | Awesome! |

  Scenario: Visitors comments an article.
    When I am on the landing page
    Then I should see "Awesome!"
    When I fill in "Comment" with "Great Article!"
    And I click "Post"