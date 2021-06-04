@US14 @SmokeTest
  Feature: US14 tests

    Background: user enters gmibank homepage then reaches create new costomers link
      Given user enters gmibank homepage
      And user clicks userEntry icon
      And user clicks signIn link
      And user enters admin username "karak"
      And user enters admin password "DJabc21"
      And user clicks signIn button
      Then user clicks myOperations link

    @TC1401
    Scenario: TC1401 manage accounts date selection today test
      Given user clicks manageAccounts link21
      And user clicks createANewAccount link
      And user sends an earlier date
      And user verifies date is an early date
      Then user signOut from Website

    @TC1402
    Scenario: TC1402 manage accounts date selection positive test
      Given user clicks manageAccounts link21
      And user clicks createANewAccount link
      And user account send a date "12122020" and click tab
      And user account send a time "1000" and user click tab
      And user account click tab
      And user account verifies valid data entry to Create Date box
      Then user signOut from Website

    @TC1403
    Scenario: TC1403 manage customers date selection positive test
      Given user clicks manageCustomers link
      And user clicks createANewCustomer link
      And user customer send a date "12122020" and click tab
      And user customer send a time "1000" and user click tab
      And user customer click tab
      And user customer verifies valid data entry to Create Date box
      Then user signOut from Website

    @TC1404
    Scenario: TC1404 manage customers user selection positive test
      Given user clicks manageCustomers link
      And user clicks createANewCustomer link
      And user customer click user box and select a user
      And user customer verifies valid selection of user
      Then user signOut from Website

    @TC1405
    Scenario: TC1405 manage customers Zelle box selection test
      Given user clicks manageCustomers link
      And user clicks createANewCustomer link
      And user customer click Zelle Enrolled box
      And user customer verifies that there is no allert message related to Zelle box
      Then user signOut from Website








