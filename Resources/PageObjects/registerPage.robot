*** Settings ***
Resource        ../importer.robot

*** Keywords ***
Register Page Opened
    Wait Until Page Contains Element         ${REGISTER_NAME}

User Register With Correct Data
    Input Text          ${REGISTER_NAME}                 ${name}
    Input Text          ${REGISTER_EMAIL}                ${correct_email}
    Input Text          ${REGISTER_PASSWORD}             ${correct_password}
    Input Text          ${REGISTER_CONFIRM_PASSWORD}     ${correct_password}
    Click Element       ${BUTTON_REGISTER}
    Press Keycode       4

User Input Empty Name
    Clear Text          ${REGISTER_NAME}
    Clear Text          ${REGISTER_EMAIL}
    Clear Text          ${REGISTER_PASSWORD}
    Clear Text          ${REGISTER_CONFIRM_PASSWORD}
    Click Element       ${BUTTON_REGISTER}
    Element Should Contain Text         ${REGISTER_EMPTY_NAME_ERROR}     ${register_empty_name_error_message}
    Press Keycode       4

User Input Empty Email
    Clear Text          ${REGISTER_NAME}
    Clear Text          ${REGISTER_EMAIL}
    Clear Text          ${REGISTER_PASSWORD}
    Clear Text          ${REGISTER_CONFIRM_PASSWORD}
    Input Text          ${REGISTER_NAME}                 ${name}
    Click Element       ${BUTTON_REGISTER}
    Element Should Contain Text         ${REGISTER_EMPTY_NAME_ERROR}     ${register_empty_email_error}
    Press Keycode       4

User Input Empty Password
    Clear Text          ${REGISTER_NAME}
    Clear Text          ${REGISTER_EMAIL}
    Clear Text          ${REGISTER_PASSWORD}
    Clear Text          ${REGISTER_CONFIRM_PASSWORD}
    Input Text          ${REGISTER_NAME}                 ${name}
    Input Text          ${REGISTER_EMAIL}                ${correct_email}
    Click Element       ${BUTTON_REGISTER}
    Element Should Contain Text         ${REGISTER_EMPTY_NAME_ERROR}     ${register_empty_password_error}
    Press Keycode       4

User Input Empty Confirm Password
    Clear Text          ${REGISTER_NAME}
    Clear Text          ${REGISTER_EMAIL}
    Clear Text          ${REGISTER_PASSWORD}
    Clear Text          ${REGISTER_CONFIRM_PASSWORD}
    Input Text          ${REGISTER_NAME}                 ${name}
    Input Text          ${REGISTER_EMAIL}                ${correct_email}
    Input Text          ${REGISTER_PASSWORD}             ${correct_password}
    Click Element       ${BUTTON_REGISTER}
    Element Should Contain Text         ${REGISTER_EMPTY_NAME_ERROR}     ${register_empty_confirm_password_error}
    Press Keycode       4