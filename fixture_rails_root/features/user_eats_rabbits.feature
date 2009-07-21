Feature: User eats a Rabbit
  In order to get that delicious feeling
  As a user
  I want to eat some Rabbits

  Scenario: eat a really cute rabbit
    Given there is a rabbit
    And the rabbit is really cute
    When I eat the rabbit
    Then I should feel good

  Scenario: eat a baby rabbit
    Given there is a rabbit
    And the rabbit is still a baby
    When I eat the rabbit
    Then I should still be hungry

