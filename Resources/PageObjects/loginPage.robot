*** Settings ***
Resource        ../importer.robot

*** Keywords ***
Login Page Opened
    Page Should Contain Element         ${EMAIL}

User Login With Correct Credential
    Input Text          ${EMAIL}        ${correct_email}
    Input Text          ${PASSWORD}    ${correct_password}
    Click Element       ${LOGIN_BUTTON}

User Click Register Link
    Page Should Contain Element         ${REGISTER_LINK}
    Click Text                          ${REGISTER_LINK}

User Login With Empty Email Address
    Input Text          ${PASSWORD}    ${correct_password}
    Click Element       ${LOGIN_BUTTON}
    Element Should Contain Text    ${EMAIL_ERROR}       ${login_empty_email_error}

User Login With Empty Password
    Input Text          ${EMAIL}        ${correct_email}
    Click Element       ${LOGIN_BUTTON}
    Element Should Contain Text    ${EMAIL_ERROR}       ${login_empty_email_error}

User Login With Empty Email and Password
    Click Element       ${LOGIN_BUTTON}
    Element Should Contain Text    ${EMAIL_ERROR}       ${login_empty_email_error}

User Login With Invalid Email Address
    Input Text          ${EMAIL}       ${invalid_email}
    Input Text          ${PASSWORD}    ${correct_password}
    Click Element       ${LOGIN_BUTTON}
    Element Should Contain Text    ${EMAIL_ERROR}       ${login_empty_email_error}