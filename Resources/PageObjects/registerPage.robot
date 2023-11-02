*** Settings ***
Resource        ../importer.robot

*** Keywords ***
Register Page Opened
    Page Should Contain Element         ${NAME}

User Register With Correct Data
    Input Text          ${NAME}                 ${name}
    Input Text          ${EMAIL}                ${correct_email}
    Input Text          ${PASSWORD}             ${correct_password}
    Input Text          ${CONFIRM_PASSWORD}     ${correct_password}
    Click Element       ${BUTTON_REGISTER}

User Input Empty Name
    Click Element       ${BUTTON_REGISTER}
    Element Should Contain Text         ${EMPTY_NAME_ERROR}     ${register_empty_name_error}

User Input Empty Email
    Input Text          ${NAME}                 ${name}
    Click Element       ${BUTTON_REGISTER}
    Element Should Contain Text         ${EMPTY_NAME_ERROR}     ${register_empty_email_error}

User Input Empty Password
    Input Text          ${NAME}                 ${name}
    Input Text          ${EMAIL}                ${correct_email}
    Click Element       ${BUTTON_REGISTER}
    Element Should Contain Text         ${EMPTY_NAME_ERROR}     ${register_empty_password_error}

User Input Empty Confirm Password
    Input Text          ${NAME}                 ${name}
    Input Text          ${EMAIL}                ${correct_email}
    Input Text          ${PASSWORD}             ${correct_password}
    Click Element       ${BUTTON_REGISTER}
    Element Should Contain Text         ${EMPTY_NAME_ERROR}     ${register_empty_confirm_password_error}