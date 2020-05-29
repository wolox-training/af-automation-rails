require 'byebug'

When('I fill in Correo with {string} and Contrasenia with {string} and click on {string} button') do |email, password, button|
  enter_text(:id, email, 'email')
  enter_text(:id, password, 'password')
  click(:id, 'unauth_container')
  click(:id, button)
  wait(5)
end

Then('I see the book that exist in this aplication') do
  check_element_presence(:id, 'loggout', true)
  click(:id, 'loggout')
end

Then('I see a message error {string} and id {string}') do |message, id|
  expect($driver.find_element(:id, id).text).to eq message
end
