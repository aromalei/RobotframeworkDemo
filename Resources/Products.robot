*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Variables    ../PageObjects/Products.py
Variables    ../PageObjects/TestData.py
Resource    login.robot



*** Keywords ***
Click Sidebar
    click element    ${BurgerButton}

Click About
    click element    ${SideBarAbout}

Click Logout
    click element    ${SideBarLogout}

Add Item to Cart
    click element    ${AddToCartBackPack}
    click element    ${AddToCartFleeceJacket}

Remove Items from Cart
    click element    ${removefromcartbackpack}

Click Cart
    click element    ${ShoppingCart}