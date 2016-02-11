*** Settings ***
Library    Selenium2Library

Suite Setup        Open Browser   ${loginPage}
Test Setup        Go To    ${loginPage}
# Suite Teardown     Close Window
Resource    resource.robot


*** Test Cases ***
Comment
    Wait Until Page Contains    Leave a comment
    Click Link    Leave a comment
    Focus    //*[@id="comment"]
    Wait Until Page Contains    Email
    Input Text    //*[@id="comment"]    great!
    Input Text    //*[@id="email"]    karnpot@set.or.th
    Input Text    //*[@id="author"]    Gap
    Click Button    comment-submit
Approve Comment
    Fill Login Password    sprint3r5    WorkingSoftware
    Wait Until Page Contains    Posts
    Click Element     //*[@id="menu-posts"]/a/div[2]
    Wait Until Element Is Visible      css=.post-com-count-pending
    Click Element    css=.post-com-count-pending
    Wait Until Element Is Visible    css=.comment
    Mouse Over    css=.comment
    Click Link    Approve
