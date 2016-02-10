*** Settings ***
Library      Selenium2Library
Resource     ../resource.robot
Resource     ../keywords.robot

*** Keywords ***
Go To Login Page
  Open Website
  Click More Tab
  Click Login Link

Click More Tab
  Click Element   //*[@id="masthead"]/button
Click Login Link
  Wait Until Element is Visible   //*[@id="meta-2"]/ul/li[2]/a
  Click Element   //*[@id="meta-2"]/ul/li[2]/a
Disable Remember Me
  Click Element   //*[@id="rememberme" and @checked='checked']
Try Login
  Click Element   wp-submit
