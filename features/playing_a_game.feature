Feature: Playing a game against the computer
  In order to play Rock Paper Scissors
  As a single player
  I want to make a choice

  Scenario: Seeing the game page
    Given I have registered as a player
    Then I should see the rock, paper, and scissor buttons

  Scenario: Playing the game
    Given I have registered as a player
    And I choose rock
    Then I should see a result

  Scenario: Playing multiple games
    Given I have played one game
    And I press "Play Again"
    Then I should see the game page