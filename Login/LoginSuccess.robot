*** Settings ***
Resource  LoginKeywords.robot
Resource  LoginResource.robot
Test Setup     Open Browser To Website
Test Teardown  Close Browser
*** Test Cases ***
Login Success With No Remember Me
  Go To Login Page
  Fill valid username
  Fill valid password
  Uncheck Remember Me
  Click Login
  Wait Until Page Contains  Dashboard
Login Success With Remember Me
  Go To Login Page
  Fill valid username
  Fill valid password
  Click Login
  Wait Until Page Contains  Dashboard
  ${wordpress_logged_in}    Get Cookie Value    wordpress_logged_in
  ${wordpress_sec}    Get Cookie Value    wordpress_sec
  ${wordpress_test_cookie}    Get Cookie Value    wordpress_test_cookie
  Close Browser
  Open Browser To Website
  Add Cookie  wordpress_logged_in   ${wordpress_logged_in}   
  Add Cookie  wordpress_sec   ${wordpress_sec}
  Add Cookie  wordpress_test_cookie   ${wordpress_test_cookie}
  Go To Website
  Wait Until Page Contains  My Site
