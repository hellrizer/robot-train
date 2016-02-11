*** Settings ***
Library      Selenium2Library
Resource     ../resource.robot
Resource     ../keywords.robot

*** Keywords ***
Go To Dashboard Page
  Go To Website
  Click More Tab
  Click Dashboard Link
  Wait Until Page Contains    Dashboard

Click Dashboard Link
  Wait Until Element is Visible   //a[text()="Site Admin"]
  Focus     //a[text()="WordPress.com"]
  Click Element   //a[text()="Site Admin"]
