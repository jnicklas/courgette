Feature: List features
  In order to communicate the function of the application to the customer
  As a developer using cucumber
  I want to publish a list of features for my application
  
  Scenario: list features in the fixture application
    Given I enter the address of the feature page
     
     Then I should see a table with the headers "Name, Scenarios"
     Then I should see a table where a row contains the cells "User eats a Rabbit, 2"
     Then I should see a table where a row contains the cells "Visitor can transform into a tamagochi, 1"
  
  
  

  
