Feature: Login Profile
Scenario: Successful login
When I fill in Correo with "alex.falcon@wolox.com.ar" and Contrasenia with "123456" and click on "login" button
Then I see the book that exist in this aplication

Scenario: Invalid format email
When I fill in Correo with "alex.falcon" and Contrasenia with "123456" and click on "login" button
Then I see a message error "This is not an Email valid" and id "email_login_span"

Scenario: Invalid character in email
When I fill in Correo with "alex.falcon*@wolox.com.ar" and Contrasenia with "123456" and click on "login" button
Then I see a message error "This is not an Email valid" and id "email_login_span"