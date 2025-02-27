@allure.suite:behave
Feature: tracker
  @xfail
  Scenario: tracker
    Given an English speaking user
    When the user says "give me location of the mark"
	  Then mycroft reply should contain "home"

  # Intent conflict when asking where something is
  @xfail
  Scenario Outline: where is skill conflict
    Given an English speaking user
    When the user says "<cases>"
	  Then "homeassistant" should not reply

  Examples: where is skill conflict
        | cases |
        | give me location of the Czech Republic |
        | where is France                        |
        | where is the golden gate bridge        |
        | current weather                        |
