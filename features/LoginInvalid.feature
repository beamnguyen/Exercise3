Feature: đăng nhập cho trang web http://the-internet.herokuapp.com/login
As user,
I want to log in successfully on internet.herokuapp.com
So I can learn new things and get tasks done


Scenario Outline: Log in with invalid account
    Given the internet.herokuapp is open successfully
    When user enter invalid "<username1>"/"<password1>"
    Then Homepage alerts "message"

    Examples:
    | username1 | password1             | message |
    | tomsmith  | hggj                  |  Your password is invalid !*|
    | def       | SuperSecretPassword!  |  Your username is invalid !*|
   



