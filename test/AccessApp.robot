*** Settings ***
Resource          ../base.resource
Resource    ../resource/pages/interestPage.resource

Test Setup        Open TED App
Test Teardown     Close Application

*** Test Cases ***
Cenario: App access
    Click In Lest Go        
    Select interest    Technology