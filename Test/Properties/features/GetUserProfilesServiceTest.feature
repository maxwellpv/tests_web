feature: GetUserProfilesServiceTest 	

	As a developer
	I want to get a list of the user profiles through an API
	So that i dont have to manually search for them in the database.

Background: 
	
	Given the endpoint http://localhost:5000/api/v1/userprofiles is available
@UserProfile_Retrieving
Scenario: Retrieve Users

	When a GET Request is sent

	Then a Response with Status 200 is received
	And a list of UserProfile resources is included in the response body.
	| id | userId     | gamingLevel | isStreamer  | gameExperiences | streamingCategories |streamerSponsors | tournamentExperiences | favoriteGames |
	| 1  | 1          | medium      | false       |      Array      |          Array      |      Array      |         Array         |     Array     |  
 