Feature: FizzBuzz

  Scenario: FizzBuzz game, number 3
    Given there is an FizzBuzz
    When we pass number 3 to game method
    Then we get Fizz as result

  Scenario: FizzBuzz game, number 6
    Given there is an FizzBuzz
    When we pass number 6 to game method
    Then we get Fizz as result

  Scenario: FizzBuzz game, number 5
    Given there is an FizzBuzz
    When we pass number 5 to game method
    Then we get Buzz as result

  Scenario: FizzBuzz game, number 10
    Given there is an FizzBuzz
    When we pass number 10 to game method
    Then we get Buzz as result

  Scenario: FizzBuzz game, number 15
    Given there is an FizzBuzz
    When we pass number 15 to game method
    Then we get FizzBuzz as result

  Scenario: FizzBuzz game, number 30
    Given there is an FizzBuzz
    When we pass number 30 to game method
    Then we get FizzBuzz as result

  Scenario: FizzBuzz game, number 23
    Given there is an FizzBuzz
    When we pass number 23 to game method
    Then we get 23 as result

  Scenario: FizzBuzz game, number 1
    Given there is an FizzBuzz
    When we pass number 1 to game method
    Then we get 1 as result

  Scenario: FizzBuzz game, array
    Given there is an FizzBuzz
    When we pass array to game method
    Then TypeError is raised

  Scenario: FizzBuzz game, dict
    Given there is an FizzBuzz
    When we pass dict to game method
    Then TypeError is raised