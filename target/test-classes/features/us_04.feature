@US_04 @SmokeTest
Feature: US_04 succes login with valid credentials

  Background: Kullanici bir user olarak gmibank anasayfasina gider
    Given Kullanici bir user olarak gmibank anasayfasina gider
    And Kullanici bir user olarak sag ust kosede bulunan insan simgesine tiklar
    And Kullanici bir user olarak acilan menuden login linkine tiklar

  @TC_0401
  Scenario: TC_0401 success message to login
    Given Kullanici acilan Sign in sayfasinda username textboxina "AAbc398" girer
    And Kullanici acilan Sign in sayfasinda password textboxina "A1b2C3" girer
    And Kullanici acilan Sign in sayfasinda Login butonuna tiklar
    Then Kullanici ismini kayit oldugu ismini acilan sayfada goruntuler

  @TC_0402
  Scenario: TC_0402 cancel login option
    Then Kullanici acilan Sign in sayfasinda Cancel butonunu goruntuler

