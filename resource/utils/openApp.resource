*** Settings ***
Resource  ../../base.resource

*** Keywords ***
Open TED App
    Open Application  
    ...  remote_url=http://localhost:4723/wd/hub  
    ...  automationName=UiAutomator2  
    ...  platformName=Android  
    ...  deviceName=Pixel 8 Pro API 35
    ...  app=${CURDIR}${/}..${/}app${/}app.apk


