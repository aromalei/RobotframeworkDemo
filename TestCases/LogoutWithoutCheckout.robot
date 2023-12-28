*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login.robot
Resource    ../Resources/Products.robot
Resource    ../Resources/ShoppingCart.robot
Resource    ../Resources/ConfirmationInformation.robot
Resource    ../Resources/CheckOutOverview.robot
Resource    ../Resources/Complete.robot
Suite Teardown  close all browsers

*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    headlesschrome
${valid_username}    standard_user
${valid_password}    secret_sauce
${FirstName}    John
${LastName}    Smith
${zcode}      321

*** Test Cases ***
Valid Login
    Open My Browser     ${url}    ${browser}
    Enter User Name    ${valid_username}
    Enter Password    ${valid_password}
    Click SignIn
Home Page
    Add Item to Cart
    remove items from cart
Logout in Home page
    Click Sidebar
    wait until element is visible    ${SideBarLogout}
    Click Logout
Verify item still in cart
    wait until element is visible    ${LoginUserName}
    Enter User Name    ${valid_username}
    Enter Password    ${valid_password}
    Click SignIn
    Click Cart
    Checkout
    Input FirstName   ${FirstName}
    Input LastName    ${LastName}
    Input Zip    ${zcode}
    Select Continue
    VerifyItemInCart