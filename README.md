# RobotframeworkDemo
Robot Framework is a generic open source test automation framework and SeleniumLibrary is one of the many test libraries that can be used with it. In addition to showing how they can be used together for web testing, this demo use robot framework to test an e-commerce website. Main test involves testing various login combinations and successfully checking out with each product using data-driven testing.

Installation:
1. Download and install python 3.12
2. Check Python installation
python --version
3. install pip 23.3.1
4. install robotframework
pip install robotframework
5. install Selenium Library
pip install robotframework-seleniumlibrary
6. Download and install pycahrm IDE
7. Install plugin IntelliBot from pycharm's marketplace
8. install chrome and firefox webdrivers
9. install plugin robotframework-pabot from pycharm's marketplace
10. install pabot in command line
    pip install -U robotframework-pabot
11. install azure-identity and azure keyvault module
    pip install azure-identity
    pip install azure.keyvault

Run the test:
Azure credentials are saved locally as environment varaiable.
click the file run.bat under RunTest folder, all the four test suites are executed in 2 parallel processes and the output are saved under Results folder.

Test Cases:
There are four test suites: LoginTestChrome.robot, LoginTestFirefox.robot, LogoutWithoutCheckout.robot, SuccessfullyCheckout.robot.
The first two test suites include different combinations of login test a sample e-commerce website https://www.saucedemo.com/
Successfullycheckout test suite include successfully checking out with each product using data-driven testing.
LogoutWithoutCheckout test suite verify that the added items are still in user'cart after logout without checkout.
