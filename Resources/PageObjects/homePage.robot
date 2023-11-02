*** Settings ***
Resource        ../importer.robot

*** Keywords ***
Home Page Opened
    Page Should Contain Element         ${TITLE}
    Element Should Contain Text         ${TITLE}          ${title_homepage}
    Element Should Contain Text         ${HOME_EMAIL}     ${correct_email}