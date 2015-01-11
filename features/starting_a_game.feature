Feature: Starting the game
  In order to play Rock Paper Scissors
  As a nostalgic player
  I want to register to play

  Scenario: Starting a game against the computer
    Given I am on the homepage
    When I fill in "name" with "Josh"
    And I choose "Human" within "opponent"
    And I press "New Game"
    Then I should see "Welcome Josh!"