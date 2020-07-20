@Jurnal
Feature: Create New Sales Invoice
  User Create New Sales Invoice

  @Create
  Scenario: Create New Sales Invoice
    Given I Visit the Journal Page
    When I Fill the email with email
    When I Fill the password with password
    When I Click button Login/SignIn
    Then the page new invoice  will be shown
    When  I Click DropDown Customer
    #And I Choose Existing Customer
    And I Choose Register New One
    Then I Will See the Register Form
    When I Fill the CustomerName
    When I Fill the CustomerEmail
    When I Fill the CustomerBillingAddress
    When I Fill the CustomerPhone
    When I Click Save
    Then I Finish Register New Customer
    #When I Fill the Transcation Date Manually
    When I Fill the Transcation Date Using Date Picker
    When I Click DropDown Product
    And I Choose Existing Product
    When I Fill the Unit Price
    #When I Upload the image
    And I Click Create Button
    Then Finish Register Sales Invoice

