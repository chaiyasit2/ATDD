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
    Wait Until Element Is Visible      //*[@id="wpbody-content"]/div[3]/h1/a
    Click Element    //*[@id="wpbody-content"]/div[3]/h1/a
        #Input Text    title    สรุปผลการดำเนินงานของบจ. งวดครึ่งปี (F45-1)
    #Input Text    //*[@id="tinymce"]/p     สรุปผลการดำเนินงานของบจ. (F45-1)\n??????????????????? SET High Dividend ETF\
