Feature: Expedia login Page

  @First
  Scenario: Username and Password validation

    Given user is in login page
    When title of the page is expedia
    Then user search for login
    Then user enter login details
      | abc | xyz |

    Then  user click login button
    Then check login error
    | Please enter a valid email address| Password must be at least 6 characters  |
    Then user enter to home page

#    Examples:
#    | username | password | emailErrorMsg | passwordErrorMsg |
#    | abc| xyz | Please enter a valid email address| Password must be at least 6 characters  |
#    |             |             |     Please enter an email address |Please enter a password   |

  Scenario: Login validation

    Given user is in login page
    When title of the page is expedia
    Then user search for login
    Then user enter login details
      |test@email.com  |    aah337         |
    Then  user click login button
    Then check login failure
      |      You may have entered an unknown email address or an incorrect password    |
    Then user enter to home page

#    Examples:
#    |validemail|validpassword|failureMsg|
#    |test@email.com      |    aah337         |      You may have entered an unknown email address or an incorrect password    |
#    | rakushah123@gmail.com    | fcfgcfgcf          | You may have entered an unknown email address or an incorrect password  |
#
#
