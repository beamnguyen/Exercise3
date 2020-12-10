Feature: đăng nhập cho trang web http://the-internet.herokuapp.com/login
As user,
I want to log in successfully on internet.herokuapp.com
So I can learn new things and get tasks done

Scenario Outline: Log in with valid acccount
    Given the internet.herokuapp is open successfully
    When user enter valid "<username>"/"<password>"
    Then Homepage log in succesfully

Examples:
    | username | password | 
    | tomsmith  | SuperSecretPassword! |






