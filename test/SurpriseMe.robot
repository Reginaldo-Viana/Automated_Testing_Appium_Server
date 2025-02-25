*** Settings ***
Resource      ../base.resource

Test Setup        Open TED App
Test Teardown     Close Application

*** Test Cases ***
Scenario: Access Surprise Me
    [Tags]    c3
    Access TED APP Without Login    interest=Technology   
    Click in Surprise Me