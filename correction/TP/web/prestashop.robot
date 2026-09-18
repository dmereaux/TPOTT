*** Settings ***
Resource    prestashop.resource
Test Setup    ouvrir prestashop
Test Teardown    fermer prestashop
*** Test Cases ***

ouvrir

    ouvrir prestashop

recherche mug
    lancer une recherche avec    MUG
    controler texte affiche    Il y a 5 produits.    mug

verifier affichage sous menu 
    aller sur menu vetements
    verifier sous menu
    #l'utilisation de la fonction partial link 
    verifier que sous le menu VÊTEMENTS il y a bien le sous menus HOMMES
    verifier que sous le menu VÊTEMENTS il y a bien le sous menus FEMMES
    verifier que sous le menu ACCESSOIRES il y a bien le sous menus PAPETERIE