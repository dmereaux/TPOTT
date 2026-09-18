*** Settings ***
Resource    checknorris.resource
Test Setup    Creer session

*** Test Cases ***

recuperer une blague et verifier chuck present 
    ${blague}    Donne moi une blague
    Log To Console    ${blague}
    Chuck a dit ca    ${blague}

récupérer une blague avec catégorie et verifier 
    ${blague_cat}    Donne moi une blague de catégorie animal
    Chuck a dit ca    ${blague_cat}
    Log To Console    ${blague_cat}
    
tester toutes les categories
    @{list_cat}    Donne moi les catégories 
    FOR    ${cat}    IN    @{list_cat}
        ${blague_cat}    Donne moi une blague de catégorie ${cat}
        Chuck a dit ca    ${blague_cat}
        Log To Console    ${blague_cat}
        
    END
    
    