Feature: scroll filesactionmenu into view
As a user
I want to see the whole filesactionmenu
So that i have access to the whole filesactionmenu

	Background:
		Given a regular user exists
		And I am logged in as a regular user
		And I am on the files page

	@skipOnINTERNETEXPLORER
	Scenario: scroll fileactionsmenu into view
		And the list of files/folders does not fit in one browser page
		Then the filesactionmenu should be completely visible after clicking on it