*** Settings ***
## Loads the variables from the .env file
Library    resource/lib/CustomDotEnv.py

## Libraries
Library    AppiumLibrary  timeout=60
Library    String


## Utils
Resource    resource/utils/openApp.resource
Resource    resource/utils/customKeywords.resource

## Locators
Variables    resource/locators/homeLocators.yaml
Variables    resource/locators/interestLocators.yml
Variables    resource/locators/lookingForLocators.yaml
Variables    resource/locators/signInLocator.yaml
Variables    resource/locators/welcomeLocators.yml
Variables    resource/locators/searchLocators.yaml
Variables    resource/locators/resultSearch.yaml

## Pages
Resource    resource/pages/homePage.resource
Resource    resource/pages/interestPage.resource
Resource    resource/pages/lookingForPage.resource
Resource    resource/pages/signInPage.resource
Resource    resource/pages/welcomePage.resource
Resource    resource/pages/searchPage.resource
Resource    resource/pages/resultSearchPage.resource

*** Variables ***
${PLATFORM_NAME}   android