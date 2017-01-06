Feature: create article on landing page
  As a visitor,
  In order to share interesting content,
  I would like to be able to create an article

  Background:
    Given that there is a user logged in with an email of "email@random.com"

  Scenario: Visitor adds article to site
    When I am on the "landing" page
    And I click "Create article"
    Then I should be on the "article creation" page
    When I fill in "Title" with "Incredible new article"
    And I fill in "Content" with "content"
    And I click "Post Article"
    Then I should see "Article posted!"
    When I go to the "landing" page
    Then I should see "Incredible new article"
    And I should see "content"
    And I should see "by me at" current date

  Scenario: Visitor tries to add article without author
    When I am on the "article creation" page
    And I fill in "Title" with "Incredible new article"
    And I click "Post Article"
    Then I should see "Content can't be blank"

