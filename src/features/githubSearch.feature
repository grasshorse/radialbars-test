Feature: radialbars repo check at Github
    As a Developer in Test
    I want to search radialbars repository
    So that I can use it in my future tests

Scenario: open-URL
    Given I open the url "https://github.com/christrees/radialbars"
    Then  I expect that the url is "https://github.com/christrees/radialbars"
    And   I expect that the title is "GitHub - christrees/radialbars: Simple svg js event testing"

@Pending
Scenario: search for webdriverio repository
    Given I open the url "https://github.com/search"
    And   the inputfield ".input-block" not contains any text
    And   I set "webdriverio" to the inputfield ".input-block"
    And   I press "Space"
    And   I add "selenium" to the inputfield ".input-block"
    When  I submit the form "#search_form"
    Then  I expect that element ".input-block" contains the text "webdriverio selenium"
    And   I expect that element ".repo-list-item:first-child > .repo-list-description" contains the text "Webdriver/Selenium 2.0 JavaScript bindings for Node.js"

@Pending
Scenario: login with fake credentials
    Given I open the url "https://github.com/"
    When  I log in to site with username "marketionist" and password "1234"
    Then  I expect that element "#js-flash-container .flash-error" is visible
