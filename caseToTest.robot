*** Settings ***
Library    Selenium2Library
# Suite Setup    Open Browser    ${loginPage}
# Test Setup    ไปที่หน้าล็อกอิน
# Suite Teardown    Close Browser
Resource    keyword/caseToTestKeyword.robot

*** Test Cases ***
Open Login Page
    Open Browser    https://sprint3r5.wordpress.com/
    Click Element    //*[@id="masthead"]/button
    Wait Until Element Is Visible     //*[@id="meta-2"]/ul/li[2]/a
    Click Link    //*[@id="meta-2"]/ul/li[2]/a
    Wait Until Page Contains    Email or Username
