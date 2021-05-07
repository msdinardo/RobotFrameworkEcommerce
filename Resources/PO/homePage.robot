*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Validate Home Page
        title should be    My Store

Search Article
    [Arguments]  ${Item Name}
    input text    id=search_query_top  ${Item Name}
    click button  css=button[name=submit_search]

Validate Search
    [Arguments]  ${Item Name}
    element should contain  css=.page-heading  ${Item Name}  ignore_case=true
    element should contain  css=.product-container  ${Item Name}  ignore_case=true

Click Women Category
    click link  css=a[title=Women]

Click Tops Category
    mouse over  css=a[title=Women]
    click link  css=a[title=Tops]

Click Summer Dress Category
    mouse over  css=a[title=Women]
    click link  css=a[title="Summer Dresses"]
