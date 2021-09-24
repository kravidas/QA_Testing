*** Settings ***

Documentation           New test suite
Library                 SeleniumLibrary
Library                 QWeb
Suite Setup             Open Browser    about:blank    chrome
Suite Teardown          Close All Browsers


*** Test Cases ***
Login to Pxp QA page
        GoTo    https://test.salesforce.com/
        TypeText    Username    automationtestuser@cisco.com.pxp.qa
        TypeSecret    Password    Cisco123456781*
        ClickText    Log In to Sandbox
        ClickText    Setup
        ClickText    Setup for current app
        SwitchWindow    2
        Sleep         5s
        TypeText     Search Setup    Alison Henry\n
        ClickText    Alison Henry
        ClickElement    xpath\=/html/body/div[4]/div[1]/table/tbody/tr/td[2]/input[4]
        Sleep      2s
        SwitchWindow   2
        ClickText    App Launcher
        Sleep    3s
        TypeText    Search apps and items...    PXP
        ClickElement    //span/p/b[contains(text(),'PXP')]
        SwitchWindow   2
        ClickText    Performance




