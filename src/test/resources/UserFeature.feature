Feature: User CRUD operations

  Scenario: CRUD User

    Given I have access gorest
    When I send POST public/v2/users with body
    """
    {
      "name":"Pamela Leon 2",
      "gender":"female",
      "email":"plm12@gmail.com",
      "status":"active"
    }
    """
    Then response code should be 200
    And the attribute string "email" should be "plm12@gmail.com"
    And save "Id" in the variable "Id_User"
    When I send PUT public/v2/users/Id_User with body
    """
    {
      "email":"updateplm12@gmail.com"
    }
    """
    Then response code should be 200
    And the attribute string "email" should be "updateplm12@gmail.com"
    When I send GET public/v2/users with body
    """
    """
    Then response code should be 200
    And the attribute string "email" should be "updateplm12@gmail.com"
    When I send DELETE public/v2/users/Id_User with body
    """
    """
    Then response code should be 200
    And the attribute string "email" should be "updateplm12@gmail.com"
    And the attribute boolean "Deleted" should be "true"