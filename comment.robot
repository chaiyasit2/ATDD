*** Settings ***
Library    Selenium2Library

Suite Setup        Open Browser   ${loginPage}
Test Setup        Go To    ${loginPage}
# Suite Teardown     Close Window
Resource    resource.robot


*** Test Cases ***
Comment
    Wait Until Element Is Visible    jquery=#main>article>header>div.entry-meta>span.comments-link>a
    # Wait Until Element Is Visible    jquery=#main
    # Click Link    Leave a comment
    Click Link    jquery=#main>article>header>div.entry-meta>span.comments-link>a
    Focus    //*[@id="comment"]
    Wait Until Page Contains    Email
    Input Text    //*[@id="comment"]    Great Article!!!
    Input Text    //*[@id="email"]    karnpot@set.or.th
    Input Text    //*[@id="author"]    Gap
    Click Button    comment-submit
Approve Comment
    Goto Login Page
    Fill Login Password    sprint3r5    WorkingSoftware
    Wait Until Page Contains    Posts
    Click Element     jquery=a.menu-icon-comments
    # Wait Until Element Is Visible      css=.post-com-count-pending
    Wait Until Element Is Visible      jquery=a.post-com-count-pending
    Click Element    jquery=a.post-com-count-pending
    Wait Until Element Is Visible    css=.comment
    Mouse Over    jquery=#the-comment-list>tr
    Click Link    Approve
