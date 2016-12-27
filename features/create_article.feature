Feature: create article on landing page
  As a visitor,
  In order to share interesting content,
  I would like to be able to create an article

  Scenario: Visitor adds article to site
    When I am on the landing page
    And I fill in "Title" with "Incredible new article"
    And I fill in "Content" with "content"
    And I fill in "Author" with "Philip"
    And I click "Post Article"
    Then I should see "Incredible new article"
    And I should see "content"
    And I should see "by Philip at" current date