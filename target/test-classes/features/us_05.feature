@US_05 @SmokeTest
Feature: US_05 Login page should not be accessible with invalid credentials

  Background: user anters gmibank homepage then reaches create new costomers link
    Given user enters gmibank homepage

  @tc0501
  Scenario Outline: User cannot login with invalid username validating the error message
    Given user enters gmibank homepage
    Then user clicks userEntry icon
    Then user clicks signIn link
    Then user enters admin username "<userName>"
    Then user enters admin password "Betul2015"
    Then user clicks signIn button
    Then assert error message
    Examples:
      |userName|
      |aaaaaaa |
      |adkssla |
      |iso1945 |
      |12jksks |

  @tc0502
  Scenario Outline: User cannot login with invalid password validating the error message
    Given user enters gmibank homepage
    Then user clicks userEntry icon
    Then user clicks signIn link
    Then user enters admin username "asilcan"
    Then user enters admin password "<password>"
    Then user clicks signIn button
    Then assert error message
    Examples:
      |password|
      |aaaaaaa25 |
      |adkssla41 |
      |iso194578 |
      |12jksks39 |

  @tc0503
  Scenario Outline: User cannot login with invalid username and password validating the error message
    Given user enters gmibank homepage
    Then user clicks userEntry icon
    Then user clicks signIn link
    Then user enters admin username "<userName>"
    Then user enters admin password "<password>"
    Then user clicks signIn button
    Then assert error message
    Examples:
      |userName|password|
      |aaaaaaa25|adkssla41 |
      |iso194578|haksk7852 |
      |12jksks39|aaaaaaa25 |
      |adkssla41|fjfjfl781 |
      |iso194578|12jksks39 |

  @tc0504
  Scenario: User with invalid credentials should be given an option to reset their password
    Given user enters gmibank homepage
    Then user clicks userEntry icon
    Then user clicks signIn link
    Then user enters admin username "aaaaaaa25"
    Then user enters admin password "adkssla41"
    Then user clicks signIn button
    Then assert error message
    And user click reset button
    And user write invalid mail
    And user click submit button
    Then assert succesful message

  @tc0505
  Scenario: User should be given the option to navigate to registration page if they did not register yet
    Given user enters gmibank homepage
    Then user clicks userEntry icon
    Then user clicks signIn link
    Then user enters admin username "aaaaaaa25"
    Then user enters admin password "adkssla41"
    Then user clicks signIn button
    Then assert error message
    Then assert register button
