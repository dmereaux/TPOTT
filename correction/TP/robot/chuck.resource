*** Settings ***
Library  RequestsLibrary

*** Variables ***
${URL}  https://api.chucknorris.io

*** Keywords ***
Afficher blague
    Create Session  url  ${URL}
    ${rep}  GET On Session  url  jokes/random  expected_status=200
    Log To Console  ${rep.json()}[value]
    

