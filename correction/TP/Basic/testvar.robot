*** Settings ***
Test Template    modele de concatenation
*** Test Cases ***

test1    hello    world    hello world
test2    chapeau    noir    chapeau noir
test3    chat    mignion    chat laid    
*** Keywords ***
modele de concatenation 
    [Arguments]    ${ent1}    ${ent2}    ${sortie}   
    ${res}    Catenate    ${ent1}    ${ent2}
    Should Be Equal    ${sortie}    ${res}