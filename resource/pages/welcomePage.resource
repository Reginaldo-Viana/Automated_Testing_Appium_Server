*** Settings ***
Resource        ../../base.resource

*** Keywords ***
Click In Lest Go
    Wait Until Element Is Visible    ${welcome.nextButton}    
    Click Element                    ${welcome.nextButton}