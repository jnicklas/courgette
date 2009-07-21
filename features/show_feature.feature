Feature: List features
  In order to communicate the function of the application to the customer
  As a developer using cucumber
  I want to publish a feature

  Scenario: list features in the fixture application
    Given I enter the address of the feature page

     Then I should see a table with the headers "Name, Scenarios"
     Then I should see a table where a row contains the cells "User eats a Rabbit, 2"

     When I follow "User eats a Rabbit"

     Then I should see the header "User eats a Rabbit"

      And I should see "In order to get that delicious feeling"
      And I should see "As a user"
      And I should see "I want to eat some Rabbits"
      And I should see "Scenario: eat a really cute rabbit"
      And I should see "Given there is a rabbit"
      And I should see "And the rabbit is really cute"
      And I should see "When I eat the rabbit"
      And I should see "Then I should feel good"