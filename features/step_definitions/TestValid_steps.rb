

Given ('the internet.herokuapp is open successfully') do
driver=Selenium::WebDriver.for:chrome
driver.get'http://the-internet.herokuapp.com/login'
driver.manage.window.maximize
end

When ('user enter valid {username}/{password}') do |string, string2|
    driver.find_element(id: "username").send_keys(string)
    driver.find_element(id:  "password").send_keys(string2)
    driver.find_element(xpath: "//i[contains(text(),'Login')]").click
end

Then ('Homepage log in succesfully') do
driver.find_element(xpath: "//i[contains(text(),'Logout')]").click
end