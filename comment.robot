*** Settings ***
Library    Selenium2Library

Suite Setup        Open Browser   ${loginPage}
Test Setup        Go To    ${loginPage}
# Suite Teardown     Close Window
Resource    resource.robot


*** Test Cases ***
Comment

    # Go To     ${loginPage}
    Wait Until Page Contains    Leave a comment
    Click Link    Leave a comment
    Focus    //*[@id="comment"]
    Wait Until Page Contains    Email
    Input Text    //*[@id="comment"]    great!
    Input Text    //*[@id="email"]    karnpot@set.or.th
    Input Text    //*[@id="author"]    Gap
    Click Button    comment-submit
