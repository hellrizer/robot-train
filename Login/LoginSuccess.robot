*** Settings ***
Resource  LoginKeywords.robot
Resource  LoginResource.robot
Suite Setup     Open Browser To Website
*** Test Cases ***
Login Success
  Go To Login Page
  Fill Valid Credentials
  Disable Remember Me
  Try Login
  Wait Until Page Contains  Dashboard
*** Keywords ***
Fill Valid Credentials
  Input Text  user_login   ${VALID_USERNAME}
  Input Text  user_pass    ${VALID_PASSWORD}
