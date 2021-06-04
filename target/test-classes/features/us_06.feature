@US_06 @SmokeTest
Feature:US_06 user info segment should be editable on Homepage

  Background: user enters gmibank homepage then reaches sign in link and clicks user info
    Given user enters gmibank homepage
    And user clicks userEntry icon
    And user clicks signIn link
    And user enters admin username "aslinda"
    And user enters admin password "Alman.1234"
    And user clicks signIn button
    And user clicks on the username on the top right
    Then user clicks on user info link

  @TC_0601
  Scenario: TC_0601 user settings test
    Given "Resit" must be entered as first name
    And "Heim" must be entered as last name
    And "almanbaki@yandex.com" must be entered as email
    And "English" must be selected as language
    Then user signOut

  @TC_0602
  Scenario Outline: TC_002 There should be 2 languages available
    Given user select "<options>" language
    Then user signOut
    Examples:
      | options |
      | 0  |
      | 1  |


  @TC_0603
  Scenario: TC_0603 update firstname
    Given user clears first name textbox
    And user updates first name as "Kolay"
    Then user signOut


  @TC_0604
  Scenario: TC_0604 update lastname
    Given user clears last name textbox
    And User updates last name as "Gelsin"
    Then user signOut


  @TC_0605
  Scenario: TC_0605 positive test update email
    Given user clears email textbox
    Given user uses the "@" sign when they update their email address
    And user uses the new ".com" sign when they update their email address
    Then user signOut


  @TC_0606
  Scenario: TC_0606 negative test update email
    Given user don't uses the @ sign when they update their email address
    And user don't uses the .com sign when they update their email address
    Then user signOut

