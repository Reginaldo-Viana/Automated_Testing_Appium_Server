*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Search Video
    [Arguments]    ${searchText}

    Wait Visible And Input Text       ${search.${PLATFORM_NAME}.searchInput}    ${searchText}

Select Search Video    
    
    Wait Until Element Is Visible     ${search.${PLATFORM_NAME}.firstElement}
    Click Element                     ${search.${PLATFORM_NAME}.firstElement}

    Wait Until Element Is Visible     ${search.${PLATFORM_NAME}.resultSearch}

    ${result}  Get Text               ${search.${PLATFORM_NAME}.resultSearch}   

    Set Test Variable                 ${result}  
    
    Wait Until Element Is Visible     ${search.${PLATFORM_NAME}.buttonStart}
    Click Element                     ${search.${PLATFORM_NAME}.buttonStart}  

    Wait Until Element Is Visible     ${search.${PLATFORM_NAME}.buttonShowPause} 
    Click Element                     ${search.${PLATFORM_NAME}.buttonShowPause}
    Click Element                     ${search.${PLATFORM_NAME}.buttonPlayPause}    

   Wait Until Element Is Visible      ${search.${PLATFORM_NAME}.timeVideo}  