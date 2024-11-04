*** Setting ***
Resource    ../../../keywords/ui/common/commonKeywords.robot
Resource    ../../../testdata/environment.robot
Resource    ../../../testdata/test_data_hotel_booking.robot
Library    ../../../keywords/ui/common/extendedLibrary.py
Library    RequestsLibrary
Library    SeleniumLibrary
Library    BuiltIn



*** Keywords ***

Open browser hotel booking
    Open browser    ${WEB_URL_HOTEL_BOOKING}    ${WEB_BROWSER} 
    Maximize Browser Window

Verify API status
    ${response}=    GET  https://panaryco.wixsite.com/myhotel  params=query=ciao  expected_status=200

Wait student registration load complete
    Wait Until Element Contains    //*[@id='header_1']    ${test_data_form_name} 

Verify firstname is empty
   ${firstname}    Get Value    //*[@id='input_48']
    Should Be Equal    ${firstname}    ${EMPTY}

Input firstname
    Input text    //*[@id='input_comp-lt33fcq41']    ${hotel_booking_firstname} 
    ${firstname}    Get Value    //*[@id='input_comp-lt33fcq41']
    Should Be Equal    ${firstname}    ${hotel_booking_firstname} 

Input lastname
    Input text    //*[@id='input_comp-lt33fcs1']    ${hotel_booking_lattname}
    ${lastname}    Get Value    //*[@id='input_comp-lt33fcs1']
    Should Be Equal    ${lastname}    ${hotel_booking_lattname}

Input mobile phone
    Input text    //*[@id='input_comp-lt33fcsi1']    ${hotel_booking_mobile_phone}
    ${mobile_number_Integer}=    Convert To Integer    ${hotel_booking_mobile_phone}
    ${mobile_number}    Get Value    //*[@id='input_comp-lt33fcsi1']
    Should Be Equal    ${mobile_number}    ${hotel_booking_mobile_phone}

Input email address
    Input text    //*[@id='input_comp-lt33fcsf1']    ${hotel_booking_email} 
    ${email}    Get Value    //*[@id='input_comp-lt33fcsf1']
    Should Be Equal    ${email}    ${hotel_booking_email} 

Verify valid email
    ${email}    Get Value    //*[@id='input_comp-lt33fcsf1']
    ${email_results}=    valid_email    ${email}
    LOG    ${email_results}
    IF    "${email_results}" == "True"
        LOG    Valid email
    ELSE IF    "${email_results}" == "False"
        LOG    Invalid email
        Fatal Error
    END

Select number of adults
    SeleniumLibrary.Click Element    //*[@class = 'RJZaGO']
    Wait Until Element Is Visible    //*[@class = 'P6sHUt' and contains(text(),'3')]
    SeleniumLibrary.Click Element    //*[@class = 'P6sHUt' and contains(text(),'3')]

Select pet question
    SeleniumLibrary.Click Element    //*[contains(., 'No') and input/@type='radio']

Input note
    Input text    //*[@id='input_comp-lt33fct3']    ${hotel_booking_note} 
    ${note}    Get Value    //*[@id='input_comp-lt33fct3']
    Should Be Equal    ${note}    ${hotel_booking_note} 

Click accept terms and conditions
    SeleniumLibrary.Click Element    //*[@id='comp-ltubl84u']
