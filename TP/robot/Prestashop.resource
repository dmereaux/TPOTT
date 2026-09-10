*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}    http://prestashop.qualifiez.fr
${BROWSER}    Chrome
${LOC_CHAMPRECHERCHE}    xpath=//*[@id="search_widget"]/form/input[2]
${LOC_RESULTATRECHERCHE}    xpath=//*[@id="js-product-list-top"]/div[1]/p
*** Keywords ***
ouvrir prestashop
    Open Browser    ${URL}    ${BROWSER}    
    Maximize Browser Window    
fermer prestashop
    Close Browser
rechercher un produit
    [Arguments]    ${produit}
    Input Text    ${LOC_CHAMPRECHERCHE}    ${produit}
    Press Keys    ${LOC_CHAMPRECHERCHE}    RETURN
verifier resultat recherche
    [Arguments]    ${resultat}
    Wait Until Element Is Visible    ${LOC_RESULTATRECHERCHE}    timeout=5s
    Element Text Should Be  ${LOC_RESULTATRECHERCHE}    ${resultat}