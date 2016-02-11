*** Settings ***
Library    Selenium2Library

Suite Setup        Open Browser   ${loginPage}
Test Setup        Go To    ${loginPage}
Suite Teardown     Close Window
Resource    resource.robot


*** Test Cases ***
Test login when not fill username and password
    Goto Login Page
    Click Element    rememberme
    Click Button   wp-submit
    Focus   user_login
    Checkbox Should Be Selected    rememberme

Test login when fill only username
    Goto Login Page
    Click Element    rememberme
    Fill Login Password   test    ${EMPTY}
    Wait Until Page Contains     The password field is empty

Test login when fill only password
    Goto Login Page
    Click Element    rememberme
    Fill Login Password    ${EMPTY}    test
    Wait Until Page Contains     The email or username field is empty.

Test login when invalid credential
    Goto Login Page
    Fill Login Password    test2    test2
    Focus   user_login
    #Textfield Value Should Be    user_pass    ${EMPTY}
    Checkbox Should Be Selected    rememberme
    Wait Until Page Contains     The password you entered for the email or username

Test login with valid credential and remember me
    Goto Login Page
    Select Checkbox    rememberme
    Fill Login Password    sprint3r5    WorkingSoftware
    Close Window
    Open Browser    ${loginPage}
    Click Element    //*[@id="masthead"]/button
    #Wait Until Element is Visible     //*[@id="meta-2"]/ul/li[2]/a
    Wait Until Page Contains    Log out

Test login with valid credential and not remember me
    Goto Login Page
    Unselect Checkbox    rememberme
    Fill Login Password    sprint3r5    WorkingSoftware
    Close Window
    Open Browser    ${loginPage}
    Click Element    //*[@id="masthead"]/button
    Wait Until Page Contains    Log in
