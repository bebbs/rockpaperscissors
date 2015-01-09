Feature: Starting the game
  In order to play Rock Paper Scissors
  As a nostalgic player
  I want to register to play

  Scenario: Registering
    Given I am on the homepage
    When I fill in "name" with "Josh"
    And I press "New Game"
    Then I should see "Welcome Josh!"