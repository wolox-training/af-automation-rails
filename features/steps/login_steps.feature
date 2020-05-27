Feature: Login Profile
Scenario: Successful login
#Given I'm in home of wolox book
When I fill in Correo whit "alex.falcon@wolox.com.ar" and Contraseña with "123456" and click on "Iniciar Sesion" button
Then I see the book that exist in this aplication