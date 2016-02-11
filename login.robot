*** Settings ***
Library    Selenium2Library

Suite Setup        Open Browser   ${loginPage}
Test Setup        Go To    ${loginPage}
Suite Teardown     Close Window
#Resource    keyword/keyword.robot

*** Variables ***
${loginPage}     https://sprint3r5.wordpress.com

*** Test Cases ***
Test login when not fill username and password
    Click Element    //*[@id="masthead"]/button
    Wait Until Element is Visible     //*[@id="meta-2"]/ul/li[2]/a
    Click Link    //*[@id="meta-2"]/ul/li[2]/a
    Click Element    rememberme
    Click Button   wp-submit
    Focus   user_login
    Checkbox Should Be Selected    rememberme

Test login when fill only username
    Click Element    //*[@id="masthead"]/button
    Wait Until Element is Visible     //*[@id="meta-2"]/ul/li[2]/a
    Click Link    //*[@id="meta-2"]/ul/li[2]/a
    Click Element    rememberme
    Input Text   user_login    test
    Click Button   wp-submit
    Wait Until Page Contains     The password field is empty

Test login when fill only password
    Click Element    //*[@id="masthead"]/button
    Wait Until Element is Visible     //*[@id="meta-2"]/ul/li[2]/a
    Click Link    //*[@id="meta-2"]/ul/li[2]/a
    Click Element    rememberme
    Input Text   user_pass    test
    Click Button   wp-submit
    Wait Until Page Contains     The email or username field is empty.

Test login with remember me
    Click Element    //*[@id="masthead"]/button
    Wait Until Element is Visible     //*[@id="meta-2"]/ul/li[2]/a
    Click Link    //*[@id="meta-2"]/ul/li[2]/a
    Click Element    rememberme
    Input Text   user_login    sprint3r5
    Input Text   user_pass    WorkingSoftware
    Click Button   wp-submit
    
