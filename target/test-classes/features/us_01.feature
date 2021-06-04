@US_01 @SmokeTest
Feature: US_01 success register with valid credentials

  Background: Kullanici bir user olarak gmibank anasayfasina gider
    Given Kullanici bir user olarak gmibank anasayfasina gider
    And Kullanici bir user olarak sag ust kosede bulunan insan simgesine tiklar
    And Kullanici bir user olarak acilan menuden register linkine tiklar

  @TC_0101
  Scenario: TC_0101 gecerli SSN test
    Given Kullanici bir user olarak SSN textboxina "333-22-4444" numarasini girer
    Then Kullanici bir user olarak SSN textboxinin bir hata uyarisi vermedigini goruntuler

  @TC_0102
  Scenario Outline: TC_0102 gecersiz SSN test
    Given Kullanici bir user olarak SSN textboxina gecersiz  "<SSN>" numarasini girer
    Then Kullanici bir user olarak "Your SSN is invalid" hata mesajini goruntuler

    Examples: TC_0102 SSN numaralari
    |SSN|
    |333-22-44445   |
    |333-22-443    |

  @TC_0103
  Scenario: TC_0103  gecerli first name positive test
    Given Kullanici bir user olarak First Name textboxina "Ali" ismini girer
    Then Kullanici bir user olarak First Name textboxinin bir hata uyarisi vermedigini goruntuler

  @TC_0104
  Scenario: TC_0104 bos first name negative test
    Given Kullanici bir user olarak First Name textboxini " " bos birakir
    Then Kullanici bir user olarak "Your First Name is required" hata uyarisini goruntuler

  @TC_0105
  Scenario: TC_0105  gecerli last name positive test
    Given Kullanici bir user olarak Last Name textboxina "Smith" soyismini girer
    Then Kullanici bir user olarak First Name textboxinin bir hata mesaji vermedigini goruntuler

  @TC_0106
  Scenario: TC_0106 bos last name negative test
    Given Kullanici bir user olarak Last Name textboxini " " bos birakir
    Then Kullanici bir user olarak "Your Last Name is required" hata mesajini goruntuler

  @TC_0107
  Scenario: TC_0107  gecerli address test
    Given Kullanici bir user olarak Address textboxina "A mah. B cad. No:1 66300 Istanbul Sariyer"  adresini girer
    Then Kullanici bir user olarak Address textboxinin bir hata mesaji vermedigini goruntuler

  @TC_0108
  Scenario: TC_0108 gecerli mobile phone number test
    Given Kullanici bir user olarak Mobile Phone Number textboxina "123-123-1234" cep telefonu numarasini girer
    Then Kullanici bir user olarak Mobile Phone Number textboxinin bir hata mesaji vermedigini goruntuler

  @TC_0109
  Scenario: TC_0109 gecersiz mobile phone number negative test
    Given Kullanici bir user olarak Mobile Phone Number textboxina tire olmadan "1231231234" cep telefonu numarasini girer
    Then Kullanici bir user olarak "Your mobile phone number is invalid" hata mesajini goruntuler

  @TC_0110
  Scenario: TC_0110 gecerli kullanici adi test
    Given Kullanici bir user olarak Username textboxina  "Abc123" kullanici adini girer
    Then Kullanici bir user olarak Username textboxinin bir hata mesaji vermedigini goruntuler

  @TC_0111
  Scenario: TC_0111 gecersiz kullanici adi test
    Given Kullanici bir user olarak Username textboxina  sadece sayilardan olusan "123" kullanici adini girer
    Then Kullanici bir user olarak Username textboxinin cerceve renginin kirmizi oldugunu goruntuler

  @TC_0112
  Scenario: TC_0112 gecerli email test
    Given Kullanici bir user olarak Email textboxina "abc@mail.com" mail adresini girer
    Then Kullanici bir user olarak Email textboxinin bir hata mesaji vermedigini goruntuler

  @TC_0113
  Scenario: TC_0113 gecerli verilerle hesap olusturma
    Given Kullanici bir user olarak SSN textboxina "333-28-4444" numarasini girer
    And Kullanici bir user olarak First Name textboxina "Ali" ismini girer
    And Kullanici bir user olarak Last Name textboxina "Smith" soyismini girer
    And Kullanici bir user olarak Address textboxina "A mah. B cad. No:1 66300 Istanbul Sariyer"  adresini girer
    And Kullanici bir user olarak Mobile Phone Number textboxina "123-123-1234" cep telefonu numarasini girer
    And Kullanici bir user olarak Username textboxina  "AAbc123" kullanici adini girer
    And Kullanici bir user olarak Email textboxina "abc12@mail.com" mail adresini girer
    And Kullanici bir user olarak New password textboxina "A1b2C3" sifresini girer
    And Kullanici bir user olarak New password confirmation textboxina "A1b2C3" sifresini girer
    And Kullanici bir user olarak Register butonuna tiklar
    Then Kullanici bir user olarak basarili bir kayit olusturulduguna dair mesaj goruntuler

