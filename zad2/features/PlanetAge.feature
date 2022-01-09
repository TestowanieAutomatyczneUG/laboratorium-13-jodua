Feature: PlanetAge

  Scenario: PlanetAge calculator, 1123123123, Merkury
    When we pass number 1123123123 and planet Merkury to calculate method
    Then we get 147.77 as result

  Scenario: PlanetAge calculator, 9999999999, Wenus
    When we pass number 9999999999 and planet Wenus to calculate method
    Then we get 515.09 as result

  Scenario: PlanetAge calculator, 1123123123, Ziemia
    When we pass number 1123123123 and planet Ziemia to calculate method
    Then we get 35.59 as result

  Scenario: PlanetAge calculator, 111111111, Mars
    When we pass number 111111111 and planet Mars to calculate method
    Then we get 1.87 as result

  Scenario: PlanetAge calculator, 99887766, Jowisz
    When we pass number 99887766 and planet Jowisz to calculate method
    Then we get 0.27 as result

  Scenario: PlanetAge calculator, invalid first argument
    When we pass not a number as first argument
    Then TypeError is raised

  Scenario: PlanetAge calculator, invalid second argument
    When we pass invalid planet type as second argument
    Then TypeError is raised

  Scenario: PlanetAge calculator, negative seconds
    When we pass negative number to calculate method
    Then ValueError is raised

  Scenario: PlanetAge calculator, invalid planet
    When we pass invalid planet to calculate method
    Then ValueError is raised
