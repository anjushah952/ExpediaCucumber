Feature: Expedia login Page

  @First
  Scenario Outline: Username and Password validation

    Given user is in login page
    When title of the page is expedia
    Then user search for login
    Then user enter login details "<username>" and "<password>"
    Then  user click login button
    Then check login error "<emailErrorMsg>" and "<passwordErrorMsg>"
    Then user enter to home page

    Examples:
    | username | password | emailErrorMsg | passwordErrorMsg |
    | abc| xyz | Please enter a valid email address| Password must be at least 6 characters  |
    |             |             |     Please enter an email address |Please enter a password   |

  Scenario Outline: Login validation

    Given user is in login page
    When title of the page is expedia
    Then user search for login
    Then user enter login details "<validemail>" and "<validpassword>"
    Then  user click login button
    Then check login failure "<failureMsg>"
    Then user enter to home page

    Examples:
    |validemail|validpassword|failureMsg|
    |test@email.com      |    aah337         |      You may have entered an unknown email address or an incorrect password    |
    | rakushah123@gmail.com    | fcfgcfgcf          | You may have entered an unknown email address or an incorrect password  |


