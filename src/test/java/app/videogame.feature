Feature: Video Game Database Tests
see: https://www.videogamedb.uk/swagger-ui/index.html

  Background:
    * url 'https://www.videogamedb.uk/api/v2'

  Scenario: Get all video games then get the first game by ID
    Given path 'videogame'
    When method get
    Then status 200

    * def firstGame = response[0]

    Given path 'videogame', firstGame.id
    When method get
    Then status 200

  Scenario: Create a videogame
    * def videoGame =
    """
    {
      "category": "Platform",
      "name": "Mario",
      "rating": "Mature",
      "releaseDate": "2012-05-04",
      "reviewScore": 85
    }
    """

    Given path 'videogame'
    And request videoGame
    When method post
    Then status 200




