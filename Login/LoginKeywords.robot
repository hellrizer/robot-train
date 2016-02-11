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
