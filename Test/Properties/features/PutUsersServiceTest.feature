feature: PutUsersServiceTest 	

	As a developer
	I want to update a user through an API
	So that i dont have to manually update it in the database.

Background: 
	
	Given the endpoint http://localhost:5000/api/v1/users/{id} is available
@User_Updating
Scenario: Update User

	When a PUT Request is sent with body
	| username      | email                 | password          | premium |
	| Firechocolate | ricardito12@gmail.com | patatacaliente123 | premium |
 
	Then a Response with Status 200 is received
	And a list of User Resources is included in the response body.
	| id | username      | email                 | password          | premium |
	| 1  | Firechocolate | ricardito12@gmail.com | patatacaliente123 | premium |
 