@US_17 @SmokeTest1
Feature: US_17 tests

  Background: user anters gmibank homepage then reaches create new costomers link
    Given user enters gmibank homepage
    Then user clicks userEntry icon
    Then user clicks signIn link
    Then user enters admin username "karak"
    Then user enters admin password "DJabc21"
    Then user clicks signIn button
    And ADMIN clicks administration link
    Then ADMIN clicks userManagement link

  @tc_1701
  Scenario: tc_1701 USER activation by ADMIN
    Given admin change the profile to USER
    Then admin deactivate USER
    Then admin reactivate USER
    Then admin signOut

  @tc_1702
  Scenario: tc_1702 USER information verifying by ADMIN
    Then admin clicks view buttons
    Then admin assert all information
    Then admin signOut

  @tc_1703
  Scenario: tc_1703 EMPLOYEE activation by ADMIN
    Given admin change the profile to EMPLOYEE
    Then admin deactivate EMPLOYEE
    Then admin reactivate EMPLOYEE
    Then admin signOut

  @tc_1704
  Scenario: tc_1704 EMPLOYEE verifying by ADMIN
    Then admin clicks view buttons
    Then admin assert all information
    Then admin signOut

  @tc_1705
  Scenario: tc_1705 MANAGER activation by ADMIN
    Given admin change the profile to MANAGER
    Then admin deactivate MANAGER
    Then admin reactivate MANAGER
    Then admin signOut

  @tc_1706
  Scenario: tc_1706 MANAGER verifying by ADMIN
    Then admin clicks view buttons
    Then admin assert all information
    Then admin signOut

  @tc_1707
  Scenario: tc_1707 ADMIN activation by ADMIN
    Given admin change the profile to ADMIN
    Then admin deactivate USER
    Then admin reactivate USER
    Then admin signOut

  @tc_1708
  Scenario: tc_1708 ADMIN verifying by ADMIN
    Then admin clicks view buttons
    Then admin assert all information
    Then admin signOut

  @tc_1709
  Scenario: tc_1709 CUSTOMER activation by ADMIN
    Given admin change the profile to CUSTOMER
    Then admin deactivate USER
    Then admin reactivate USER
    Then admin signOut

  @tc_1710
  Scenario: tc_1710 CUSTOMER verifying by CUSTOMER
    Then admin clicks view buttons
    Then admin assert all information
    Then admin signOut

  @tc_1711
  Scenario: tc_1711 ADMIN creation and deletion by ADMIN
    Then admin creates new ADMIN profile
    Then admin assert new profile
    Then admin deletes new created profile
    Then admin asserts new profile is deleted
    Then admin signOut

  @tc_1712
  Scenario: tc_1712 EMPLOYEE creation and deletion by ADMIN
    Then admin creates new EMPLOYEE profile
    Then admin assert new profile
    Then admin deletes new created profile
    Then admin asserts new profile is deleted
    Then admin signOut

  @tc_1713
  Scenario: tc_1713 MANAGER creation and deletion by ADMIN
    Then admin creates new MANAGER profile
    Then admin assert new profile
    Then admin deletes new created profile
    Then admin asserts new profile is deleted
    Then admin signOut

  @tc_1714
  Scenario: tc_1714 USER creation and deletion by ADMIN
    Then admin creates new USER profile
    Then admin assert new profile
    Then admin deletes new created profile
    Then admin asserts new profile is deleted
    Then admin signOut

  @tc_1715
  Scenario: tc_1715 CUSTOMER creation and deletion by ADMIN
    Then admin creates new CUSTOMER profile
    Then admin assert new profile
    Then admin deletes new created profile
    Then admin asserts new profile is deleted
    Then admin signOut

