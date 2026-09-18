*** Settings ***
Resource  prestashop.resource
Test Setup  ouvrir prestashop
Test Teardown  fermer prestashop
*** Test Cases ***
test de connexion
    Title Should Be    monPrestaShop

test de recherche
    rechercher un produit    MUG
    verifier resultat recherche    Il y a 5 produits.

 test de recherche vide
     rechercher un produit  ${EMPTY}
     verifier resultat recherche vide    Aucun produit ne correspond à votre recherche