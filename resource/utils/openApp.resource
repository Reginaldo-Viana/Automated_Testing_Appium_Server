*** Settings ***
Resource  ../../base.resource

*** Keywords ***
Open TED App
    Open Application  
    ...  remote_url=http://localhost:4723/wd/hub  
    ...  automationName=UiAutomator2  
    ...  platformName=${PLATFORM_NAME} 
    ...  deviceName=Medium Phone API 35
    ...  app=${CURDIR}${/}..${/}app${/}app.apk
    ...  disableIdLocatorAutoCompletion=${True}