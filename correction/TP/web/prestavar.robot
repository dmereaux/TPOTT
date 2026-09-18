*** Settings ***
Resource    prestashop.resource
Test Setup    ouvrir prestashop
Test Teardown    fermer prestashop
Test Template    rechercher un produit
Library    DataDriver    file=${CURDIR}${/}data.csv
*** Test Cases ***
defaut
#le test initial
#recherche mug
    #lancer une recherche avec    MUG
    #controler texte affiche    Il y a 5 produits.    mug

#utilisation d'un template pour variabiliser le test initial

#recherche mug    mug    Il y a 5 produits.
#recherche t-shirts    t-shitrs    Il y a 1 produit.
#recherche pull     pull    Il y a 2 produits.

*** Keywords ***

rechercher un produit
    [Arguments]    ${produit}    ${resultat_recherche}   
    lancer une recherche avec    ${produit}
    controler texte affiche    ${resultat_recherche}    ${produit}
    
