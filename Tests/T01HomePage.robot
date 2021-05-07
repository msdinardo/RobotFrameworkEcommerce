*** Settings ***
Documentation    Home Page Test Suite
Library    SeleniumLibrary
Resource  ../Resources/common.robot
Resource  ../Resources/PO/homePage.robot
Resource  ../Resources/PO/listingPage.robot
Test Setup    before each
Test Teardown  after each

*** Variables ***
${SEARCH_TERM} =  Dress

*** Test Cases ***
Search and article
    Validate Home Page
    Search Article  ${SEARCH_TERM}
    Validate Search  ${SEARCH_TERM}

Search Main Category
    Click Women Category
    Validate Women Category Page

Search Sub Category
    Click Tops Category
    Validate Tops Category Page

Search Third Category
    Click Summer Dress Category
    Validate Summer Dress Category Page

*** Keywords ***
before each
    OPEN BROWSER  ${BASE URL}   ${browser}
    maximize browser window

after each
    CLOSE BROWSER