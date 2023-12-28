*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/ConfirmInformation.py

*** Keywords ***
Input FirstName
    [Arguments]    ${FirstName}
    input text     ${InputFName}    ${FirstName}

Input LastName
   [Arguments]    ${LastName}
    input text    ${InputLName}    ${LastName}

Input Zip
    [Arguments]    ${zcode}
    input text     ${ZipCode}    ${zcode}

Select Continue
    click element    ${ContinueButton}

Select Cancel
    click element    ${CancelButton}