Feature: Visitors can comment on published articles
  As a visitor,
  In order to give my opinion on an article,
  I would like to be able to comment on it

  Background:
    Given the following articles exists
  | title                | content                            | author |
  | Learn Rails 5        | Build awesome rails applications   | Amber  |
    And I am on the landing page

  Scenario: Visitors comments an article.
    When I fill in "Comment" with "Awesome Article!"
    And I click "Add comment"