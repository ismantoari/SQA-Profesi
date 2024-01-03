@api
Feature: Test Automation Rest API

  #test get data user
  @apiGetUser
    Scenario: Test get list data user
      Given url for "GET_LIST_USERS"
      And hit api to get list users
      Then validation status code is equals 200
      Then validation response body get list users
      Then validation response json with JSONSchema "get_list_users.json"

  @apiCreateUser
    Scenario: Test create new user
      Given url for "CREATE_NEW_USERS"
      And hit api to create new users
      Then validation status code is equals 201
      Then validation response body create new users
      Then validation response json with JSONSchema "post_new_users.json"

# @apiCreateUSerNegative
 # Scenario: Test create new with blank name
 #   Given url for "CREATE_NEW_USERS"
 #   And hit api to create new users
 #   Then user see error message


  @apiUpdateUser
  Scenario: Test update users
    Given url for "CREATE_NEW_USERS"
    And hit api to create new users
    Then validation status code is equals 201
    Then validation response body create new users
    And hit api to update users
    Then validation status code is equals 200
    Then validation response body update user

  @apiDeleteUser
  Scenario: Test delete users
    Given url for "CREATE_NEW_USERS"
    And hit api to create new users
    Then validation status code is equals 201
    Then validation response body create new users
    And hit api to delete users
    Then validation status code is equals 204
