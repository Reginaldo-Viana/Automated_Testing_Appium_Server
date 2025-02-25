*** Settings ***
#### Library ####
Library            AppiumLibrary    timeout=60

#### Utils ####
Resource           resource/utils/openApp.resource
Resource           resource/utils/customKeywords.resource

#### Locators ####
Variables          resource/locators/welcomeLocators.yml
Variables          resource/locators/interestLocators.yml

#### Pages ####
Resource           resource/pages/welcomePage.resource
Resource           resource/pages/interestPage.resource

*** Variables ***
${PLATFORM_NAME}    android



