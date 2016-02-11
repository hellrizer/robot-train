*** Settings ***
Resource  LoginKeywords.robot
Resource  LoginResource.robot
Suite Setup     Open Browser To Website
*** Test Cases ***
Login Success With No Remember Me
  Go To Login Page
  Fill Valid Username and Password
  Uncheck Remember Me
  Click Login
  Wait Until Page Contains  Dashboard
*** Keywords ***
Fill Valid Username and Password
  Input Text  user_login   ${VALID_USERNAME}
  Input Text  user_pass    ${VALID_PASSWORD}
