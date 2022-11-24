*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser1}    gc
${browser2}    edge
${user}    Admin
${pass}    admin123
*** Test Cases ***
Test_login
    OpenBrow    ${url}    ${browser1}
    EntreUsername    ${user}
    EnterPass    ${pass}
    ClickLogin
    ValidSuccessLogin
    ClosingBrowser
