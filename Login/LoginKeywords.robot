*** Settings ***
Library      Selenium2Library
Resource     ../resource.robot
Resource     ../keywords.robot

*** Keywords ***
Go To Login Page
  Go To Website
  Click More Tab
  Click Login Link
  Wait Until Element is Visible   user_login
Click More Tab
  Click Element   //*[@id="masthead"]/button
Click Login Link
  Wait Until Element is Visible   //*[@id="meta-2"]/ul/li[2]/a
  Click Element   //*[@id="meta-2"]/ul/li[2]/a
Uncheck Remember Me
  Click Element   //*[@id="rememberme" and @checked='checked']
Click Login
  Click Element   wp-submit
Fill invalid username
  Input Text  user_login   zzzzzzz
Fill invalid password
  Input Text  user_pass    zzzzzzz
Fill valid username
  Input Text  user_login   ${VALID_USERNAME}
Fill valid password
  Input Text  user_pass    ${VALID_PASSWORD}
Fill empty username
  Input Text  user_login   ${EMPTY}
Fill empty password
  Input Text  user_pass    ${EMPTY}
Remember me is checked
  Wait Until Element Is Visible  //*[@id="rememberme" and @checked='checked']
