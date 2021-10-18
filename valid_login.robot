*** Settings ***
Documentation     A test suite for valid login.
...               You can edit Robot Framework files in Amandus!
...               I have troubles finding traffic lights.
...               Robot Framework is cool!
...               Keywords are imported from the resource file
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Login Page
    Input Credentials    demo    mode
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser
