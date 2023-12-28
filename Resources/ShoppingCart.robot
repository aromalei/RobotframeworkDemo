*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/ShoppingCart.py

*** Keywords ***
Checkout
    click element    ${Checkout}

ContinueShopping
    click element    ${ContinueShopping}

RemoveElement
    click element    ${RemoveItem}