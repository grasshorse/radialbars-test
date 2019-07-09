Feature: radialbars game play
    As a Developer in Test
    I want to play radialbars
    So that I can verify game play in my feature tests

Scenario: open game app url
    Given I open the url "https://christrees.com/radialbars/"
    Then  I expect that the url is "https://christrees.com/radialbars/"
    And   I expect that the title is "rb-test"
#    When  I pause for 10000ms

Scenario: Start Game
    Given I open the url "https://christrees.com/radialbars/"
    Then  I expect that the url is "https://christrees.com/radialbars/"
    And   there is an element ".hub" on the page
    And   the element "text" matches the text "Click to Start"
    When  I click on the element ".hub"
    Then  I expect that element ".bar" does appear exactly "1" times
    And   the element "text" matches the text "0"
    When  I pause for 5000ms
    Then  the element "text" matches the text "Game Over"

#@WIP @Pending
Scenario: Click bar
    Given I open the url "https://christrees.com/radialbars/"
    And   there is an element ".hub" on the page
    And   the element "text" matches the text "Click to Start"
    When  I click on the element ".hub"
    Then  I expect that element ".bar" does appear exactly "1" times
    And   I expect that element ".bar" becomes visible
    And   I pause for 2000ms
    When  I move and click the radialbars element ".bar"
    And   I pause for 100ms
    Then  the element "text" matches the text "+ 5"
    And   I pause for 1000ms
    Then  the element "text" matches the text "5"
    When  I pause for 5000ms
    Then  the element "text" matches the text "Game Over"