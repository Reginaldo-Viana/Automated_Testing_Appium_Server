*** Settings ***
Resource      ../base.resource

Test Setup        Open TED App
Test Teardown     Close Application

*** Test Cases ***
Scenario: Perform a Search Video
    Access TED APP Without Login    interest=Technology    
    Click In Browse Tab Icon
    Search Video    Technology
    Select Search Video
    View Result Search
