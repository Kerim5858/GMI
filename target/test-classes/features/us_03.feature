@US03 //@SmokeTest

Feature: US_003 Registration page should restrict password usage to a secure and high level passcode

  Background: user register gmibank hopage click and reache
    Given   Kullanici bir user olarak gmibank anasayfasina gider
    And     Kullanici bir user olarak sag ust kosede bulunan insan simgesine tiklar
    And     Kullanici bir user olarak acilan menuden register linkine tiklar


  @tc0301
  Scenario Outline: TC_0301  Positiv Test  at least 1 lowercase char for stronger password and see the level chart change accordingly
    Given bir user sent data to new Password Box "<Password>" and verify the level chart


    Examples:
      | Password  |
      | Betul2015 |
      | BeT201    |


  @tc0302
  Scenario Outline: TC_0302 Negative Test at least 1 lowercase char for stronger password and see the level chart change accordingly
    Given iki user sent to newPassword Box "<Password>" and verify the level chart


    Examples:
      | Password      |
      | BETUL2015!!!  |
      | BET201!.....B |

  @tc0303
  Scenario Outline: TC_0303 Positiv Test at least 1 lowercase char and see the level chart change accordingly
    Given uc user sent to newPass box "<Password>" and verify the level chart


    Examples:
      | Password   |
      | Betul2015. |
      | BeT201!    |
      | aBE3.      |
      | bet2015    |
      | BET2015a   |

  @tc0304
  Scenario Outline: TC_0304 Negativ test  at least 1 lowercase char and see the level chart change accordingly
    Given dort user sent to newPassword field "<Password>" and verify the level chart

    Examples:
      | Password   |
      | BETUL2015. |
      | BT201!     |
      | BT2015434! |

  @tc0305
  Scenario Outline: TC_0305 Positiv test at least 1 digit and see the level chart change accordingly
    Given  bes user sent to newPassword field "<Password>" and verify the level chart

    Examples:
      | Password |
      | Bet2a.!  |
      | Ba!2C4   |
      | 345a!B   |


  @tc0306
  Scenario Outline: TC_0306 Negativ test at least 1 digit and see the level chart change accordingly
    Given alti user sent to newPassword  "<Password>" and verify the level chart


    Examples:
      | Password        |
      | BETULa.         |
      | Besdfbbdf!!!!   |
      | BeTdfsdgb!!!..! |


  @tc0307
  Scenario Outline: TC_0307 Positiv test at least 1 special char and see the level bar change accordingly
    Given yedi user sent to newPASWORD box "<Password>" and verify the level chart


    Examples:
      | Password        |
      | BE24La.         |
      | Bet2!a2         |
      | BeTdf34dgb!!..! |

  @tc0308
  Scenario Outline: TC_0308 Negativ test at least 1 special char and see the level bar change accordingly
    Given sekiz user sent to newPASvORD box "<Password>" and verify the level chart


    Examples:
      | Password |
      | BETULa23 |
      | Bet2     |
      | BeTd35   |


  @tc0309
  Scenario Outline: TC_0309 Positiv Test  at least 7 chars for a stronger password

    Given dokuz user sent to newPassWORD box "<Password>" and verify the level chart


    Examples:
      | Password    |
      | Be2.!Al     |
      | Bet2a!.a345 |


  @tc0310
  Scenario Outline: TC_0310 Negativ Test  at least 7 chars for a stronger password

    Given on user sent to newPass field "<Password>" and verify the level chart


    Examples:
      | Password |
      | Be2.!A   |
      | Bet2a    |
      | aB2!     |







