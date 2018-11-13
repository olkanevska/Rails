@add_article_steps @js
Feature: Article Adding
  User can add a new article
  Scenario: user can add article with correct data
    Given I visit the page "/articles/new"
    When I fill forms on new article page with correct data
    And I click the "Create Article" button
    And I visit the page "/articles"
    Then I should see newly created article on articles page
