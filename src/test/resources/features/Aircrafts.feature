Feature: Testing FTB REST API AIRCRAFTS resource
  Clients should be able to READ/CREATE/UPDATE/DELETE an aircraft record.

  Scenario: Get specific aircraft data by its ID
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=3
    Then aircraft data to be manufacturer='Boing' and model='Boing 747' and number of seats=500

  Scenario: Create an aircraft
    Given FTB is up and running and the tests are configured
    When client tries to create an Aircraft having manufacturer='Boeing' and model='747' and number of seats=-1
    Then returned aircraft data to be manufacturer is null and model is null

  Scenario: Get specific aircraft data by its ID with number of seats is null
    Given FTB is up and running and the tests are configured
    When client gets details of Aircraft id=36
    Then returned aircraft with number of seats is null data to be manufacturer='Boeing' and model='Boeing 201'