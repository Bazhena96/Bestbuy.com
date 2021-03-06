*** Settings ***
Library   SeleniumLibrary
Resource  GlobalVariables.robot
Resource  SuiteKeywords.robot
*** Keywords ***
Open and Load
    Open Browser  https://www.bestbuy.com  chrome  executable_path=/usr/local/Caskroom/chromedriver/83.0.4103.39/chromedriver
    Set Browser Implicit Wait  20
Wait And Click
    [Arguments]  ${locator}
    Wait Until Page Contains Element  ${locator}
    Click Element  ${locator}
Load And Maximize Browser Window
    Open and Load
    Maximize Browser Window
Choose The Language
    [Documentation]  Language: english
    Wait And Click  css=.is-active
Sort Product
    [Arguments]  ${sort product}
    Wait Until Page Contains Element  ${sort product}
    Click Element  ${sort product}
Select Item
    [Arguments]  ${product link}
    Click Element  ${product link}
User Input Email To Sign In
    [Arguments]  ${user email field}
    Wait Until page Contains Element  ${user email field}
    Input Text  ${user email field}  ${USER EMAIL}
User Input Password
    [Arguments]  ${password field}
    Wait Until Page Contains Element  ${password field}
    Input Password  ${password field}  ${USER PASSWORD}
User Click The Button To Account
    [Arguments]  ${click button to sign in}  ${account button}
    Wait And Click  ${account button}
    Wait And Click  ${click button to sign in}
User Click Submit
    [Arguments]  ${submit to sign in}
    Wait And Click  ${submit to sign in}
Dismiss Alert US
    Click Element  css=#widgets-view-email-modal-mount > div > div > div:nth-child(2) > div > div > div > div > button
Dismiss Alert
    Sleep  5
    Wait And Click  css=#button-acceptar-alertcustomer-message
    Wait And Click  css=#button-acceptar-alertcustomer-message
Dismiss Alert MX
    ${button count}  Get Element Count  css=#button-acceptar-alertcustomer-message
    Run Keyword IF  ${button count}>0  Dismiss Alert


