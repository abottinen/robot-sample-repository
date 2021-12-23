*** Settings ***
Documentation     Reusable keywords and variables.
...               Testi dippadai
Library           SeleniumLibrary

*** Variables ***
${SERVER}         localhost:7272
${BROWSER}        Firefox
${LOGIN URL}      http://${SERVER}/
${WELCOME URL}    http://${SERVER}/index.html


*** Keywords ***
Open Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Login Page Should Be Open

Login Page Should Be Open
    Location Should Be    ${LOGIN URL}
    Title Should Be    Login Page

Input Credentials
    [Arguments]    ${username}    ${password}
    Input Text    username_field    ${username}
    Input Text    password_field    ${password}

Submit Credentials
    Click Button    login_button

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    Welcome Page
