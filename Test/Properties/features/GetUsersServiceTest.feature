feature: GetUsersServiceTest 	

	As a developer
	I want to get a list of the users through an API
	So that i dont have to manually search for them in the database.

Background: 
	
	Given the endpoint http://localhost:5000/api/v1/users is available
@User_Retrieving
Scenario: Retrieve Users

	When a GET Request is sent
	Then a Response with Status 200 is received
	And a list of User Resources is included in the response body.
	| id | username      | email                 | password          | premium |
	| 1  | Firechocolate | ricardito12@gmail.com | patatacaliente123 | premium |
 