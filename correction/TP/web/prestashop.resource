*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${URL}    http://www.qualifiez.fr/monPrestashop2/prestashop/index.php
${BROWSER}    chrome
${LOC_RECHERCHE}    //*[@id="search_widget"]/form/input[2]
${LOC_result}    //*[@id="js-product-list-top"]/div[1]/p
${LOC_list}    //*[@id="js-product-list"]/div[1]/div/article/div/div[2]/h2/a
${LOC_MENU_VETEM}    //*[@id="category-3"]/a
${LOC_SOUS_MENU_HOMMES}    //*[@id="category-4"]/a
*** Keywords ***

ouvrir prestashop
    Open Browser    ${URL}    ${BROWSER}
fermer prestashop
    Close Browser

*** Keywords ***
lancer une recherche avec
    [Arguments]    ${recher}
    Input Text  ${LOC_RECHERCHE}    ${recher}
    Press Keys    ${LOC_RECHERCHE}    RETURN


controler texte affiche
    [Arguments]    ${texte}    ${recherche}
    Element Text Should Be    ${LOC_result}    ${texte}
    @{liste}    Get WebElements    ${LOC_list}    
    FOR    ${elemt}    IN    @{liste}
        Log To Console    ${elemt}
        Element Should Contain    ${elemt}    ${recherche}    ignore_case=${True}
    END
    
    
aller sur menu vetements
    Element Should Not Be Visible    ${LOC_SOUS_MENU_HOMMES}
    Mouse Over    locator=${LOC_MENU_VETEM}
    
verifier sous menu 

    #Element Should Be Visible    ${LOC_SOUS_MENU_HOMMES}
    Wait Until Element Is Visible    ${LOC_SOUS_MENU_HOMMES}    10    #il attend jusqu'a l'affichage de l'élément
    
verifier que sous le menu ${menu} il y a bien le sous menus ${smenu} 
    Mouse Over  partial link:${menu}
    Element Should Be Visible    partial link:${smenu} 