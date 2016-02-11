*** Variables ***
${loginPage}     https://sprint3r5.wordpress.com


*** Keywords ***
Goto Login Page
    Maximize Browser Window
    Click Element    //*[@id="masthead"]/button
    Wait Until Element Is Visible     //*[@id="meta-2"]/ul/li[2]/a
    Click Link    //*[@id="meta-2"]/ul/li[2]/a
    Wait Until Element Is Visible    user_login

Fill Login Password
    [arguments]    ${usernameInput}     ${passwordInput}
    Input Text   user_login    ${usernameInput}
    Input Text   user_pass     ${passwordInput}
    Click Button   wp-submit
