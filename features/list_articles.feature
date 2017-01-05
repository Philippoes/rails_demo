Feature: List articles on landing page
  As a visitor,
  when I visit the application's landing page,
  I would like to see a list of articles

  Background:
    Given that there is an article with title: "A breaking news item" and content: "Some really breaking action" made by a user with email "amber@random.com"
    And that there is an article with title: "Learn Rails 5" and content: "Build awesome rails applications" made by a user with email "thomas@random.com"


  Scenario: Viewing list of articles on application's landing page
    When I am on the "landing" page
    Then I should see "A breaking news item"
    And I should see "Some really breaking action"
    And I should see "Written by amber@random.com at" current date
    And I should see "Learn Rails 5"
    And I should see "Build awesome rails applications"
    And I should see "by thomas@random.com at" current date