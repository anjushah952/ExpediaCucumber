Feature: Expedia login Page

  Scenario: Login page

    Given user is in login page
    When title of the page is expedia
    Then user search for login
    Then user enter login details
    Then  user click login button
    Then check login error
    Then user enter to home page

