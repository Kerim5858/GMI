@US_02  @SmokeTest
Feature: US_02 Test
  Background: Kullanici bir user olarak gmibank anasayfasina gider
    Given Kullanici bir user olarak gmibank anasayfasina gider
    And Kullanici bir user olarak sag ust kosede bulunan insan simgesine tiklar
    And Kullanici bir user olarak acilan menuden register linkine tiklar

  @TC_0201
  Scenario: TC_0201 registiration test
    And  kullanici textboxlari bos birakip register butonuna tiklar
    Then kullanici bos birakilan textbox'larda uyari yazisi ciktigini dogrular
  @TC_0202
  Scenario:  TC_0202 invalid SSN test
    And  kullanici SSN textboxina sayilar arasinda bosluk koyarak giris yapar
    Then invalid numara girildiginde textbox'in kenar rengi kirmizi gorulur
  @TC_0203
  Scenario: TC_0203 invalid mobile phone number test
    And kullanici Mobile Phone Number textbox'ini sayilar arasinda ozel karakter kullanmadan doldurur
    Then  invalid giris yapildiginda mobile phone number yazisi kirmizi olur
  @TC_0204
  Scenario Outline: TC_0204 email adress test
    And  kullanici "<email>" adresini girer
    Then kullanici invalid email girdiginde hata mesajini gorur
    Examples: emailler
      | email           |
      | alicangmail.com |
      | alican@gmail    |