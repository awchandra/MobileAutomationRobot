*** Settings ***

*** Variable ***
${appiumServer}             http://127.0.0.1:4723/wd/hub

${platformName}             Android
${apk}                      ./apk/Sample Android App - Login Tes.apk
${appPackage}               com.loginmodule.learning
${appPackageActivity}       com.loginmodule.learning.activities.LoginActivity
${udid}                     c970ecbb

${correct_email}            trial@gmail.com
${correct_password}         trialPassword
${name}                     trialUser

${invalid_email}            trial123

${wrong_email}              wrongMail@gmail.com
${wrong_password}           wrongPassword

${login_empty_email_error}          Enter Valid Email

${register_empty_name_error}                Enter Full Name
${register_empty_email_error}               Enter Valid Email
${register_empty_password_error}            Enter Password
${register_empty_confirm_password_error}    Password Does Not Matches

${title_homepage}           Android NewLine Learning
