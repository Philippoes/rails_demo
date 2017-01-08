Feature: delete article on my article page
  As a visitor,
  In order to remove an article,
  I would like to have a delete button on my articles page

Background:
  Given that there is an article with title: "Learn Rails 5" and content: "Build awesome rails applications" made by a user with email "email@random.com"
  And that user is logged in

  Scenario: User deletes a post
    When I am on the "My articles" page
    And I focus on article "Learn Rails 5"
    And I click "Delete article"
    Then I should see "Article deleted!"