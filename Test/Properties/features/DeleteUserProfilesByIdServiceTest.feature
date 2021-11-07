feature: DeleteUserProfilesByIdServiceTest 	

	As a developer
	I want to delete a user profile through an API
	So that i dont have to manually delete it in the database.

Background: 
	
	Given the endpoint http://localhost:5000/api/v1/userprofiles/{id} is available
@UserProfile_Removing
Scenario: Delete User Profile By Id

	When a DELETE Request is sent
	Then a Response with Status 200 is received
	