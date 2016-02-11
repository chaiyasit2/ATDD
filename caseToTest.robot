*** Settings ***
Library    Selenium2Library
Suite Setup    Open Browser    ${loginPage}
Test Setup    ไปที่หน้าล็อกอิน
Suite Teardown    Close Browser
Resource    keyword/caseToTestKeyword.robot

*** Test Cases ***
Login With Valid Credential Should Succeeded
    Fill valid credential
    Try to Login
    Login succeeded
