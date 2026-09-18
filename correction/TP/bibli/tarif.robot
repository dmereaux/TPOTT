*** Settings ***
Library    tarif    age=12

*** Test Cases ***
casMoinsde12
    ${tarif}    ratp_tarif    6    #le 6 sans $ et {} ça ne marche pas car c'est une compraison entre integer et string, sauf lorsque nous initions le typage au niveau de la fonction
    Should Be Equal    ${tarif}    demi tarif

    lister    1    2    3    
    Skippy