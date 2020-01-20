Feature: Expedia login Page

  @First
  Scenario: Username and Password validation

    Given user is in login page
    When title of the page is expedia
    Then user search for login
    Then user enter login details
    | username |password|
      | abc | xyz |

    Then  user click login button
    Then check login error
    |emailErrorMsg | passwordErrorMsg |
    | Please enter a valid email address| Password must be at least 6 characters |
    Then user enter to home page



  Scenario: Login validation

    Given user is in login page
    When title of the page is expedia
    Then user search for login
    Then user enter login details
    | username | password |
      |test@email.com  | aah337 |
    Then  user click login button
    Then check login failure
    | failureMsg |
      | You may have entered an unknown email address or an incorrect password |
    Then user enter to home page

