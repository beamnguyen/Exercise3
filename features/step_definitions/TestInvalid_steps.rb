Given ('the internet.herokuapp is open successfully') do
    driver=Selenium::WebDriver.for:chrome
    driver.get'http://the-internet.herokuapp.com/login'
    driver.manage.window.maximize
 end
    When ('user enter invalid {username1}/{password1}') do |string, string2|
        driver.find_element(id: "username").send_keys(string)
        driver.find_element(id:  "password").send_keys(string2)
        driver.find_element(xpath: "//i[contains(text(),'Login')]").click
    end
    Then('Log in with invalid account ') do()
    print driver.find_element(xpath: "//div[@id='flash-messages']").text
    #expect(driver.title.).to.eq(string)
    driver.quit
    
    end