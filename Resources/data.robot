*** Settings ***

*** Variable ***
${appiumServer}             127.0.0.1:4723/wd/hub

${platformName}             Android
${automationName}           uiautomator2
${appPackage}               com.loginmodule.learning
${appPackageActivity}       com.loginmodule.learning.activities.LoginActivity
${udid}                     c970ecbb

${correct_email}            NewUser@gmail.com
${correct_password}         trialPassword
${name}                     New User

${invalid_email}            trial123

${wrong_email}              wrongMail@gmail.com
${wrong_password}           wrongPassword

${login_empty_email_error}          Enter Valid Email

${register_empty_name_error_message}            Enter Full Name
${register_empty_email_error}                   Enter Valid Email
${register_empty_password_error}                Enter Password
${register_empty_confirm_password_error}        Password Does Not Matches

${title_homepage}           Android NewLine Learning
