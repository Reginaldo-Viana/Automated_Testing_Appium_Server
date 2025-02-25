*** Settings ***
Resource        ../../base.resource

*** Keywords ***
Select interest
    [Arguments]    ${interestName}

    Wait Until Element Is Visible    ${interest.${PLATFORM_NAME}.interestList.format(text='${interestName}')}    
    Click Element                    ${interest.${PLATFORM_NAME}.interestList.format(text='${interestName}')}

    Wait Until Element Is Enabled    ${interest.${PLATFORM_NAME}.saveButton}    
    Click Element                    ${interest.${PLATFORM_NAME}.saveButton}