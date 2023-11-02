*** Settings ***
Test Setup              Open Android Apps
Test Teardown           Close Apps
Resource                ../resources/importer.robot


*** Test Case ***
User Able To Register With Correct Data
    [Documentation]             This test for register with correct data
    [Tags]                      Android Test
    loginPage.Login Page Opened
    loginPage.User Click Register Link
    registerPage.Register Page Opened
    registerPage.User Register With Correct Data

User Should See Error Message When Empty The Data
    [Documentation]             This test for check error message when all data is empty
    [Tags]                      Android Test
    loginPage.Login Page Opened
    loginPage.User Click Register Link
    registerPage.Register Page Opened
    registerPage.User Input Empty Name

User Should See Error Message When Empty The Email
    [Documentation]             This test for check error message when email is empty
    [Tags]                      Android Test
    loginPage.Login Page Opened
    loginPage.User Click Register Link
    registerPage.Register Page Opened
    registerPage.User Input Empty Email

User Should See Error Message When Empty The Password
    [Documentation]             This test for check error message when password is empty
    [Tags]                      Android Test
    loginPage.Login Page Opened
    loginPage.User Click Register Link
    registerPage.Register Page Opened
    registerPage.User Input Empty Password

User Should See Error Message When Empty The Confirm Password
    [Documentation]             This test for check error message when confirm password is empty
    [Tags]                      Android Test
    loginPage.Login Page Opened
    loginPage.User Click Register Link
    registerPage.Register Page Opened
    registerPage.User Input Empty Confirm Password