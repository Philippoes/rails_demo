Feature: View user articles
  In order for a users to manage their own articles,
  They need a separate page to view their articles.

  Background:
    Given that there is a user logged in with an email of "email@random.com"

  Scenario: Visitor adds article and views it in /user/articles
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
