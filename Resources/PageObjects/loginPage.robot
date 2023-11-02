*** Settings ***
Resource        ../importer.robot

*** Keywords ***
Login Page Opened
    Page Should Contain Element         ${LOGIN_EMAIL}

User Login With Correct Credential
    Input Text          ${LOGIN_EMAIL}          ${correct_email}
    Input Text          ${LOGIN_PASSWORD}       ${correct_password}
    Click Element       ${LOGIN_BUTTON}

User Click Register Link
    Page Should Contain Element             ${REGISTER_LINK}
    Click Element                           ${REGISTER_LINK}

User Login With Empty Email Address
    Clear Text          ${LOGIN_EMAIL}
    Clear Text          ${LOGIN_PASSWORD}
    Input Text          ${LOGIN_PASSWORD}    ${correct_password}
    Click Element       ${LOGIN_BUTTON}
    Element Should Contain Text    ${LOGIN_EMAIL_ERROR}       ${login_empty_email_error}

User Login With Empty Password
    Clear Text          ${LOGIN_EMAIL}
    Clear Text          ${LOGIN_PASSWORD}
    Input Text          ${LOGIN_EMAIL}        ${correct_email}
    Click Element       ${LOGIN_BUTTON}
    Element Should Contain Text    ${LOGIN_EMAIL_ERROR}       ${login_empty_email_error}

User Login With Empty Email and Password
    Clear Text          ${LOGIN_EMAIL}
    Clear Text          ${LOGIN_PASSWORD}
    Click Element       ${LOGIN_BUTTON}
    Element Should Contain Text    ${LOGIN_EMAIL_ERROR}       ${login_empty_email_error}

User Login With Invalid Email Address
    Clear Text          ${LOGIN_EMAIL}
    Clear Text          ${LOGIN_PASSWORD}
    Input Text          ${LOGIN_EMAIL}       ${invalid_email}
    Input Text          ${LOGIN_PASSWORD}    ${correct_password}
    Click Element       ${LOGIN_BUTTON}
    Element Should Contain Text    ${LOGIN_EMAIL_ERROR}       ${login_empty_email_error}