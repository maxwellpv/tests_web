feature: DeletePublicationByIdServiceTest 	

	As a developer
	I want to delete a publication through an API
	So that i dont have to manually delete it in the database.

Background: 
	
	Given the endpoint http://localhost:5000/api/v1/publications/{id} is available
@Publication_Removing
Scenario: Delete Publication By Id

	When a DELETE Request is sent
	Then a Response with Status 200 is received
	