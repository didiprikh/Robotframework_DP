*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    gc
${user}    Admin
${pass}    admin123
*** Test Cases ***
Test_login
    OpenBrow    ${url}    ${browser}
    EntreUsername    ${user}
    EnterPass    ${pass}
    ClickLogin
    ValidSuccessLogin
    ClosingBrowser
