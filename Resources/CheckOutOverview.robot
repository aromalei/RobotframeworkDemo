*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/CheckOutOverview.py

*** Keywords ***
VerifyItemInCart
    element should contain    ${Item}    Sauce Labs Fleece Jacket

OverviewCheckOut
    click element    ${CheckoutFinishButton}

CancelCheckOut
    click element    ${CheckoutCancelButton}