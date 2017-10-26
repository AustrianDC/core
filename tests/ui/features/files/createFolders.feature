Feature: createFolders
As a user
I want to create folders
So that i can organise my data structure

	Background:
		Given a regular user exists
		And I am logged in as a regular user
		And I am on the files page

	Scenario Outline: Create a folder using special characters
		When I create a folder with the following name
			| name-parts      |
			| <folder_name>   |
		Then the following folder should be listed
			| name-parts      |
			| <folder_name>   |
		And the files page is reloaded
		Then the following folder should be listed
			| name-parts      |
			| <folder_name>   |
		Examples:
		|folder_name    |
		|सिमप्ले फोल्देर $%#?&@|
		|"somequotes1"|
		|'somequotes2'|

	Scenario: Create a folder inside another folder
		When I create a folder with the name "top-folder"
		And I open the folder "top-folder"
		Then there are no files/folders listed
		When I create a folder with the name "sub-folder"
		Then the folder "sub-folder" should be listed
		And the files page is reloaded
		Then the folder "sub-folder" should be listed