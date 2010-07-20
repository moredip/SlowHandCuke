Feature: Improve cuke feedback during slow-running tests

Scenario: slow failing test
	Given I wait 2 seconds
	When I wait 3 seconds
	Then the test fails
