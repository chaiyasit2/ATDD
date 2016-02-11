*** Settings ***
Library    Selenium2Library

Suite Setup        Open Browser   ${loginPage}
Test Setup        Go To    ${loginPage}
Suite Teardown     Close Window
Resource    resource.robot

*** Test Cases ***
Test post uncategory entry with image
    Goto Login Page
    Fill Login Password    sprint3r5    WorkingSoftware
    Wait Until Page Contains    Posts
    Click Element     //*[@id="menu-posts"]/a/div[2]
    Wait Until Element Is Visible      css=.page-title-action
    Click Link    css=.page-title-action
    Input Text    title    สรุปผลการดำเนินงานของบจ. งวดครึ่งปี (F45-1)
    Select Frame    content_ifr
    Input Text     //*[@id="tinymce"]   สรุปผลการดำเนินงานของบจ. (F45-1)\n??????????????????? SET High Dividend ETF\n
    Unselect Frame
    Click Element    insert-media-button
    Wait Until Element Is Visible    //*[@id="__attachments-view-107"]/li/div/div
    Click Element     //*[@id="__attachments-view-107"]/li/div/div
    Click Element    //*[@id="__wp-uploader-id-0"]/div[5]/div/div[2]/button
    Select Frame    content_ifr
    Wait Until Element Is Visible    //*[@id="tinymce"]/p/img
    Unselect Frame
    Wait Until Element Is Visible    //*[@id="publish"]
    Click Element    //*[@id="publish"]
