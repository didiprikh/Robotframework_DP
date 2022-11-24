*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***
OpenBrow
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3
EntreUsername
    [Arguments]    ${user}
    Input Text    ${txt_usernameO}    ${user}
EnterPass
    [Arguments]    ${pass}
    Input Password    ${txt_passO}    ${pass}
ClickLogin
    Click Button    ${buttLoginO}
ValidSuccessLogin
    Title Should Be    OrangeHRM
ClosingBrowser
    Close All Browsers