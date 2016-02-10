*** Settings ***
Library      Selenium2Library
*** Variables ***
${WEBSITE}    https://sprint3r6.wordpress.com

*** Keywords ***
Open Browser To Website
  Open Browser  ${WEBSITE}
Open Website
  Go To   ${WEBSITE}
