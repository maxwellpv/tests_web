feature: GetUserProfilesByIdServiceTest 	

	As a developer
	I want to get a user profile through an API
	So that i dont have to manually search for it in the database.

Background: 
	
	Given the endpoint http://localhost:5000/api/v1/userprofiles/{id} is available
@UserProfile_Retrieving
Scenario: Retreive Profile

	When a GET Request is sent

	Then a Response with Status 200 is received
	And a UserProfile resource is included in the response body.
	| id | userId     | gamingLevel | isStreamer  | gameExperiences | streamingCategories |streamerSponsors | tournamentExperiences | favoriteGames |
	| 1  | 1          | medium      | false       |      Array      |          Array      |      Array      |         Array         |     Array     |  
 