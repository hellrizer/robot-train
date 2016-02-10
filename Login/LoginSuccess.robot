*** Settings ***
Resource  LoginKeywords.robot
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
  Input Text  log   ${VALID_USERNAME}
  Input Text  user_pass    ${VALID_PASSWORD}
