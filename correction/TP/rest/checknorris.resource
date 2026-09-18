*** Settings ***
Library    RequestsLibrary


*** Variables ***
${ENDPOINT}    https://api.chucknorris.io/
${blague au hasard}    jokes/random
${categorie}    jokes/categories
*** Keywords ***

Creer session
    Create Session    chuck    ${ENDPOINT}    disable_warnings=${True}
    
    
Donne moi une blague 
    ${resp_json}    GET On Session    chuck    ${blague au hasard} 
    RETURN    ${resp_json.json()}[value]

Chuck a dit ca    #vérifie chuck dans la blague
    [Arguments]    ${blague}
    Should Contain    ${blague}    chuck    ignore_case=${True}


Donne moi une blague de catégorie ${cat}

    ${resp_json}    GET On Session    chuck    ${blague au hasard}    params=category=${cat}
    RETURN    ${resp_json.json()}[value]

Donne moi les catégories

    ${resp_json}    GET On Session    chuck    ${categorie}
    RETURN    ${resp_json.json()}
