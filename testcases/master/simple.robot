*** Settings ***
Library    SeleniumLibrary
Resource    ../../testdata/environment.robot
Resource    ../../keywords/ui/page/homepage.robot
Test Teardown    Close All Browsers

*** Test Cases ***
Verify registration form with single single fault firstname
    Open Browser    https://www.jotform.com/212934779973474     chrome
