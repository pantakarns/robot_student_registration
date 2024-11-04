*** Settings ***
Library    SeleniumLibrary
Resource    ../../testdata/environment.robot
Resource    ../../keywords/ui/page/homepage_hotel_booking.robot
Test Teardown    Close All Browsers

*** Test Cases ***
Verify registration with all input data
    [Tags]    all_input
    Open browser hotel booking
    Verify API status
    Input firstname
    Input lastname
    Input mobile phone
    Input email address
    Select number of adults
    Select pet question
    Input note
    Click accept terms and conditions

Verify valid/invalid email address
    [Tags]    thai_phone_number
    Open browser hotel booking
    Input firstname
    Input lastname
    Input mobile phone
    Input email address
    Verify valid email
    Select number of adults
    Select pet question
    Input note
    Click accept terms and conditions
