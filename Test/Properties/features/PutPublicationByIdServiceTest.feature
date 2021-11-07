feature: PutPublicationByIdServiceTest 

	As a developer
	I want to update a publication through an API
	So that i dont have to manually update it in the database.

Background: 
	
	Given the endpoint http://localhost:5000/api/v1/publications/{id} is available
@Publication_Updating
Scenario: Update Publication By Id

	When a PUT Request is sent 
	| id | publicationType | title                  | content                                                                       | participantLimit | prizePool | tDate     | tHour | urlToImage | publicatedAt             | gameId | userId |
	| 1  |        1        | Example of Publication | Example of content for a publication test where i reach de minimum characters |        10        |    50     |   null    | null  | null       | 2021-11-06T17:20:14.579Z | null   |   1    |
 

	Then a Response with Status 200 is received
	And a UserProfile Resource is included in the response body.
	| id | publicationType | title                  | content                                                                       | participantLimit | prizePool | tDate     | tHour | urlToImage | publicatedAt             | gameId | userId |
	| 1  |        1        | Example of Publication | Example of content for a publication test where i reach de minimum characters |        10        |    50     |   null    | null  | null       | 2021-11-06T17:20:14.579Z | null   |   1    |
 