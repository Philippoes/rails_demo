Feature: delete article on my article page
  As a visitor,
  In order to remove an article,
  I would like to have a delete button on my articles page

  Background:
    Given that there is a user logged in with an email of "email@random.com"

  Scenario: Visitor adds article and deletes it
    When I am on the "landing" page
    And I click "Create article"
    Then I should be on the "article creation" page
    When I fill in "Title" with "Incredible new article"
    And I fill in "Content" with "content"
    And I click "Post Article"
    Then I should see "Article posted!"
    When I click "My articles"
    Then I should see "Incredible new article"
    And I should see "content"
    And I should see "by me at" current date
    When I click "Delete article"
    Then I should see "Article deleted!"