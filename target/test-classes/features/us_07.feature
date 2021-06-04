@US_07 @SmokeTest @hata
Feature: US_07 Test

  Background: Kullanici bir user olarak gmibank anasayfasina gider
    Given Kullanici bir user olarak gmibank anasayfasina gider
    And  Kullanici bir user olarak sag ust kosede bulunan insan simgesine tiklar
    And  Kullanici bir user olarak acilan menuden signIn linkine tiklar
    And Kullanici username textboxina "AAbc398" girer
    And Kullanici  password textboxina "A1b2C3" girer
    And Kullanici signin butonuna tiklar
    And Kullanici sag ustteki insan simgesine tekrar tiklar ve userInfo basligini secer

  @TC_0701
  Scenario Outline: TC_0701 email test
    And Kullanici email textBoxina tiklar
    And Kullanici "<email>" girer
    Then kullanici hatali email  girdiginde hata mesajini gorur
    Examples: invalid emailler
      | email             |
      | abc122afhmail.com |
      | abc122afh@mail    |


  @TC_0702
  Scenario: TC_0702 language  test
    Given Kullanici language  secenegine tiklar
    And Kullanici language dropDown'unun icinde sadece  "English" veya "Türkçe" dilleri oldugunu gorur
