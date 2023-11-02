*** Settings ***
###Test Setup              Open Android Apps
###Test Teardown           Close Apps
Resource                ../resources/importer.robot


*** Test Case ***
User Able To Login With Correct Credential
    [Documentation]             This test for login with correct credential
    [Tags]                      Android Test
    Open Application              ${appiumServer}     platformName=${platformName}  deviceName=${udid}  app=${apk}  appPackage=${appPackage}    appActivity=${appPackageActivity}
    registerPage.Register Page Opened
    registerPage.User Register With Correct Data
    loginPage.Login Page Opened
    loginPage.User Login With Correct Credential
    homePage.Home Page Opened

User Cannot Login With Invalid Email Address
    [Documentation]             This test for login with invalid email
    [Tags]                      Android Test
    loginPage.Login Page Opened
    loginPage.User Login With Invalid Email Address

User Cannot Login With Empty Email and Password
    [Documentation]             This test for login with empty credential
    [Tags]                      Android Test
    loginPage.Login Page Opened
    loginPage.User Login With Empty Email And Password

User Cannot Login With Empty Email
    [Documentation]             This test for login with empty email
    [Tags]                      Android Test
    loginPage.Login Page Opened
    loginPage.User Login With Empty Email Address

User Cannot Login With Empty Password
    [Documentation]             This test for login with empty password
    [Tags]                      Android Test
    loginPage.Login Page Opened
    loginPage.User Login With Empty Password

