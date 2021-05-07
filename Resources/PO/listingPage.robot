*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Validate Women Category Page
    element should contain  css=.cat-name  Women  ignore_case=true
    ${products} =  get element count   css=.product-container
    should be equal as integers  ${products}  7

Validate Tops Category Page
    element should contain  css=.cat-name  Tops  ignore_case=true
    ${products} =  get element count   css=.product-container
    should be equal as integers  ${products}  2

Validate Summer Dress Category Page
    element should contain  css=.cat-name  Summer Dresses  ignore_case=true
    ${products} =  get element count   css=.product-container
    should be equal as integers  ${products}  3