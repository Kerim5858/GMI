@US009 @SmokeTest
Feature: US_009 User can search for a new applicant by their SSN and see all their registration info populated

  Background: user anters gmibank homepage then reaches create new costomers link
    Given user enters gmibank homepage
    Then user clicks userEntry icon
    Then user clicks signIn link
    Then user enters admin username "vivi"
    Then user enters admin password "Betul2015."
    Then user clicks signIn button
    And user clicks myOperations link
    And user clicks manageCostomers link
    And user clicks createNewCustomer link


  @tc0901
  Scenario: Positiv Test  enter correct SSN and All information of the user filled in in the registration field should be seen
    Given one Positiv user enter "555-55-5555" SSN  sees then firstname , lastname,email,mobilnumber,phoneNumber,addres ,ssn ,createDate
    Then  two Positiv user enter "555-55-5555" SSN  and doesnt  see then the rest of  unfiiled Record in registration
    Then   user signOut

  @tc0902
  Scenario: Negativ Test enter incorret SSN then there shoudl not seen any data of users
    Given  three Negativ user enter false SNN "343-34-2323" doesnt  see any info of users
    Then   four  Negativ user enter incorrect SSN "343-22-2343" and should see aller Error messaj
    Then   user signOut

  @tc0903
  Scenario Outline: : Positiv Test enter to out of SSN search Box a data then user should not see any data of users
    Given  five Positv user enters to firstname Box "<name>"
    Then   six  Possitiv user doesnt see any of info of user
    Then   user signOut

    Examples:
    |name|
    |silgi|
    |alex |
    |zehra|


  @tc0904
  Scenario: Negativ Test select from user a data and not filled data should be  displayed
    Given  seven Negativ user selects from user Box a data
    Then   eigth Negativ user can select all usersname
    Then   nine  Negativ user  wont be see any data of users
    Then   user signOut

  @tc0905
  Scenario Outline: user enter correct SSN data and use may edit or fill the data of user
    Given  ten user enter correct ssn data "<555-55-5555>"
    Then   eleven user fill miss box of data
    Then   twelve user click save
    Then   user signOut

    Examples:
    |555-55-5555|
    |222-22-2222|
    |555-55-5555|
