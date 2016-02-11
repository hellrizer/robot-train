*** Settings ***
Resource  ../Login/LoginKeywords.robot
Resource  ../Login/LoginResource.robot
Resource  ../Post/PostResource.robot
Resource  ../Post/PostKeywords.robot
Suite Setup     Open Browser And Login
Suite Teardown  Close Browser
Test Setup    Go To Dashboard Page
*** Test Cases ***


Post Content Success With Title and Text Content
  Click Link Post
  #Add New Post Entry
  Fill Title In Post
  Fill Content With Text
  #Choose Uncategorized
  Click Publish
  Click View Post
  Remove Post

Post Content Success With Title and Text Image Content
  Click Link Post
  #Add New Post Entry
  Fill Title In Post
  Fill Content With Text
  Fill Content With Image
  #Choose Uncategorized
  Click Publish
  Click View Post
  Remove Post
*** Keywords ***
Open Browser And Login
  Open Browser To Website
  Go To Login Page
  Fill valid username
  Fill valid password
  Uncheck Remember Me
  Click Login
  Wait Until Page Contains  Dashboard

Click Link Post
  Mouse Over   //*[@id="menu-posts"]/a/div[3]
  Wait Until Element Is Visible   link=Add New  timeout=10
  Click Element    //*[@id="menu-posts"]//a[text()="Add New"]
  Wait Until Page Contains   Add New Post
Fill Title In Post
  Input Text    title   ${TITLE}
Fill Content With Text
  Input Text    content   ${CONTENT}
Fill Content With Image
  Click Element   insert-media-button
  Wait Until Element Is Visible  //a[text()="Media Library"]
  Click Element   //a[text()="Media Library"]
  Wait Until Element Is Visible  //li[@aria-label="MeiyisBeautiful"]
  Click Element   //li[@aria-label="MeiyisBeautiful"]
  Click Element   //button[text()="Insert into post"]
Choose Uncategorized
  Click Element  //*[@id="categorychecklist"]//input[text()=Uncategorized]
Click Publish
  Click Element   save-post
  Wait Until Page Contains    Last edited by   timeout=20
  Click Element   publish
Click View Post
  Click Element   link=View post
  Wait Until Page Contains   ${TITLE}   timeout=10
  Page Should Contain  ${CONTENT}
Remove Post
  Click Element   link=Edit
  Wait Until Element Is Visible    //button[@class="editor-delete-post"]   timeout=15
  Click Element   //button[@class="editor-delete-post"]
  Wait Until Element Is Visible   //*[text()="Move to trash"]
  Click Element   //*[text()="Move to trash"]
  Wait Until Page Contains   Deleted Post
