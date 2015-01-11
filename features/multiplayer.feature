Feature: Playing a multiplayer game
  In order to play Rock Paper Scissors
  As two players
  I want to make a choice

  Scenario: Waiting for another player to join
    Given I have registered for a multiplayer game
    Then I should see the waiting page
