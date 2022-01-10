Feature: PasswordValidator

    @letters @invalid
    Scenario: PasswordValidator, only letters, too short, invalid
        Given there is an PasswordValidator
        When we add test to password
        And we check if the password is correct
        Then password is invalid

    @letters @invalid
    Scenario: PasswordValidator, only letters, invalid
        Given there is an PasswordValidator
        When we add teststring to password
        And we check if the password is correct
        Then password is invalid

    @uppercase @invalid
    Scenario: PasswordValidator, only letters, invalid
        Given there is an PasswordValidator
        When we add TESTSTRING to password
        And we check if the password is correct
        Then password is invalid

    @digits @invalid
    Scenario: PasswordValidator, only digits, invalid
        Given there is an PasswordValidator
        When we add 10 numbers to password
        And we check if the password is correct
        Then password is invalid

    @digits @invalid
    Scenario: PasswordValidator, only digits, too short, invalid
        Given there is an PasswordValidator
        When we add 2 numbers to password
        And we check if the password is correct
        Then password is invalid

    @special @invalid
    Scenario: PasswordValidator, only special, invalid
        Given there is an PasswordValidator
        When we add @!)_*(#^&$%!@) to password
        And we check if the password is correct
        Then password is invalid

    @special @invalid
    Scenario: PasswordValidator, only special, too short, invalid
        Given there is an PasswordValidator
        When we add @#$ to password
        And we check if the password is correct
        Then password is invalid

    @special @digits @invalid
    Scenario: PasswordValidator, special and digits, invalid
        Given there is an PasswordValidator
        When we add @#$ to password
        And we add 7 numbers to password
        And we check if the password is correct
        Then password is invalid

    @letters @digits @invalid
    Scenario: PasswordValidator, letters and digits, invalid
        Given there is an PasswordValidator
        When we add abcd to password
        And we add 7 numbers to password
        And we check if the password is correct
        Then password is invalid

    @letters @special @invalid
    Scenario: PasswordValidator, letters and digits, invalid
        Given there is an PasswordValidator
        When we add !@#!@#!@# to password
        And we add 7 numbers to password
        And we check if the password is correct
        Then password is invalid

    @uppercase @special @invalid
    Scenario: PasswordValidator, uppercase and special, invalid
        Given there is an PasswordValidator
        When we add !@#!@#!@# to password
        And we add ASDASD to password
        And we check if the password is correct
        Then password is invalid

    @uppercase @digits @invalid
    Scenario: PasswordValidator, uppercase and digits, invalid
        Given there is an PasswordValidator
        When we add ABCDEFFG to password
        And we add 7 numbers to password
        And we check if the password is correct
        Then password is invalid

    @uppercase @digits @letters @special @valid
    Scenario: PasswordValidator, uppercase, digits, letters, special chars, valid
        Given there is an PasswordValidator
        When we add ABCDEFFG to password
        And we add 7 numbers to password
        And we add abc to password
        And we add !@# to password
        And we check if the password is correct
        Then password is valid

    @uppercase @digits @special @valid
    Scenario: PasswordValidator, uppercase, digits, special chars, valid
        Given there is an PasswordValidator
        When we add ABCDEFFG to password
        And we add 7 numbers to password
        And we add !@# to password
        And we check if the password is correct
        Then password is valid

    @uppercase @digits @letters @special @valid
    Scenario: PasswordValidator, uppercase, digits, letters, special chars, too short, invalid
        Given there is an PasswordValidator
        When we add A to password
        And we add 2 numbers to password
        And we add a to password
        And we add !@ to password
        And we check if the password is correct
        Then password is invalid