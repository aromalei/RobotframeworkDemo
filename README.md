# RobotframeworkDemo
Robot Framework is a generic open source test automation framework and SeleniumLibrary is one of the many test libraries that can be used with it. In addition to showing how they can be used together for web testing, this demo use robot framework to test an e-commerce website. Main test involves testing various login combinations and successfully checking out with each product using data-driven testing. The user credentials are saved in Azure Key Vault for security reasons.

## Installation:
1. Download and install [python 3.12](https://www.python.org/downloads/)

2. Check Python installation

   `python --version`

3. Install pip 23.3.1

4. Install robotframework

   `pip install robotframework`

5. Install Selenium Library

   `pip install robotframework-seleniumlibrary`

6. Download and install [pycahrm IDE](https://www.jetbrains.com/pycharm/)

7. Install plugin IntelliBot from pycharm's marketplace

8. Install [chrome](https://chromedriver.chromium.org/downloads) and [firefox](https://github.com/mozilla/geckodriver/releases) webdrivers

9. install plugin robotframework-pabot from pycharm's marketplace

10. Install pabot in command line

    `pip install -U robotframework-pabot`

11. Install azure-identity and azure keyvault module in command line

    `pip install azure-identity`

    `pip install azure.keyvault`

## How to run the test:
Azure credentials are saved locally as environment varaiable.

`set varname=value`

Click the file run.bat under RunTest folder, all the four test suites are executed in 2 parallel processes and the output are saved under `Results` folder.

## Test Cases:
There are four test suites:
- LoginTestChrome.robot
- LoginTestFirefox.robot
- LogoutWithoutCheckout.robot
- SuccessfullyCheckout.robot.

The first two test suites include different combinations of login test a sample e-commerce website https://www.saucedemo.com/

`Successfullycheckout` test suite includes successfully checking out with each product using data-driven testing.

`LogoutWithoutCheckout` test suite verifies that the added items are still in user's cart after logout without checkout.
