When("I fill in Correo with {string} and Contraseña with {string} and click on {string} button") do |email, password, button|
    driver.findElement(By.className("email")).enter_text(email);
    driver.findElement(By.className("password")).enter_text(password);
    driver.findElement(By.linkText("button")).click();
end

Then("I see the book that exist in this aplication") do
    it 'found button Cerrar Sesion' do
        expect(driver.findElement(By.className("loggout"))).to be_present
    end
end