Feature: Expedia login Page

  @First
  Scenario: Username and Password validation

    Given user is in login page
    When title of the page is expedia
    Then user search for login
    Then user enter login details "dfg" and "sdf"
    Then  user click login button
    Then check login error "Please enter a valid email address" and "Password must be at least 6 characters"
    Then user enter to home page

  Scenario: Login validation

    Given user is in login page
    When title of the page is expedia
    Then user search for login
    Then user enter login details "test@email.com" and "aah337"
    Then  user click login button
    Then check login failure "You may have entered an unknown email address or an incorrect password"
    Then user enter to home page


