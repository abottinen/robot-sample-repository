*** Settings ***
Documentation     A test suite for valid login.
...               You can edit this file in Amandus!
...               Keywords are imported from the resource file
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Login Page
    Input Username    demo
    Input Password    mode
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser
    
Bad Login
    Open Browser To Login Page
    Input Username    invalidUsername 
    Input Password    invalidPW
    Submit Credentials
    Welcome Page Should Be Not Open
    [Teardown]    Close Browser
