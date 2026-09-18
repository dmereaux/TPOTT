*** Settings ***
Test Tags    default
Documentation    documentation au niveau setting
...    avec une suite de ligne

Test Setup    debut de test
Test Teardown    fin de test
Suite Setup    debut de suite


*** Variables ***

@{ma_liste}    maroc    beau    pays
&{MonDict}    nom=outtaj    prenom=hamza    pays=maroc

*** Test Cases ***
TPURL
    Log To Console    ${URL}    

TP1
    [Documentation]    documentation tp1
    [Tags]    REG
    Log    ceci est une info    level=INFO    console=${True}
    Log    ceci est une warning    level=WARN    console=${True}
    Log    ceci est une erreur    level=ERROR    console=${True}
    Log    ceci est du debug    level=DEBUG    

TP2 
    [Documentation]    documentation tp2
    [Tags]    test_keywords 
    mot cle avec arguments    Hamza    30
    mot cle avec arguments    Hamza    
    
    ${x}    mot cle avec retour 
    Should Be Equal     ${x}     2025
    #Set Global Variable    ${x}


TP2bis
    Log To Console    variable devenue globale, ${x}


TP3
    
    VAR    @{liste locale au test}    1    2    3    4
    Log To Console    ${ma_liste}[1]
    Log To Console    ${liste locale au test}[2]
    Log To Console    Je suis ${MonDict}[prenom], je viens du ${MonDict}[pays]

TP3-1
    
    Log To Console    ${\n}${CURDIR}
    Log To Console    ${\n}${EXECDIR}

TP3-2
    [Setup]
    [Tags]    robot:continue-on-failure
    Should Be Equal    ${80}    80
    Should Be Equal As Integers    ${80}    80


TP3-3
    Log To Console    ${PREV_TEST_STATUS}
    Skip If    "${PREV_TEST_STATUS}"=="FAIL"


TP7
    FOR    ${elt}    IN    @{ma_liste}
        Log To Console    ${elt}
    END


TP9  
    ${res}    Catenate    Hello    World
        Should Be Equal    Hello World    ${res}

TP10 

    [Template]    modele de concatenation 
    toto    tata    toto tata
    titi    tata    toto tata
    tata    titi    tata 

*** Keywords *** 
mot cle avec arguments 
    [Documentation]    documentation keyword avec arguments
    [Arguments]    ${arg1}    ${arg2}=10
    Log To Console    je m'appelle ${arg1} et j'ai ${arg2} ans

mot cle avec retour
    [Documentation]    documentation keyword avec retour
    ${x}    Get Time    format=year
    RETURN     ${x} 

debut de test
    log to console    ouverture de navig  

fin de test
    Log To Console    fermeture de navig, statu du test : ${TEST_STATUS}
    Run Keyword If Test Failed    log to console    perdu

debut de suite
    Log To Console    config du systeme
    Log To Console    mise en place de donnès

modele de concatenation 
    [Arguments]    ${ent1}    ${ent2}    ${sortie}   
    ${res}    Catenate    ${ent1}    ${ent2}
    Should Be Equal    ${sortie}    ${res}