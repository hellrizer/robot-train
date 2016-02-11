*** Settings ***
Resource  LoginKeywords.robot
Resource  LoginResource.robot
Suite Setup     Open Browser To Website
Suite Teardown  Close Browser
*** Test Cases ***
Login Fail with Invalid username and password
  Go To Login Page
  Fill invalid username
  Fill invalid password
  Uncheck Remember Me
  Click Login
  Wait Until Page Contains  ERROR: Invalid email or username
Login Fail With valid username and invalid password
  Go To Login Page
  Fill valid username
  Fill invalid password
  Uncheck Remember Me
  Click Login
  Wait Until Page Contains  ERROR: The password you entered for the email or username
Login Fail With invalid username and valid password
  Go To Login Page
  Fill invalid username
  Fill valid password
  Uncheck Remember Me
  Click Login
  Wait Until Page Contains  ERROR: Invalid email or username
Login Fail With empty username and valid password
  Go To Login Page
  Fill empty username
  Fill valid password
  Uncheck Remember Me
  Click Login
  Wait Until Page Contains  The email or username field is empty
Login Fail With valid username and empty password
  Go To Login Page
  Fill valid username
  Fill empty password
  Uncheck Remember Me
  Click Login
  Wait Until Page Contains  ERROR: The password field is empty
Login Fail With empty username and empty password
  Go To Login Page
  Fill empty username
  Fill empty password
  Uncheck Remember Me
  Click Login
  Remember me is checked
