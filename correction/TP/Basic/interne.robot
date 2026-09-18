*** Settings ***
Library    Dialogs
Library    Screenshot    screenshot_directory=${EXECDIR}${/}screenshot    screenshot_module=wxPython
Library    OperatingSystem
Suite Setup    Create Directory   ${EXECDIR}${/}screenshot
*** Test Cases ***

verifier la couleur de la led
    Execute Manual Step    Verifier la couleur de la led     la led est éteinte


récuperer des valeurs
    @{users}    Get Value From User    1    0    3
    FOR    ${ID}    IN    @{users}
        Log To Console    ${ID}
    END

récuperer des selections
    @{users}    Get Selections From User    quel utilisateurs   1    2    3
    FOR    ${ID}    IN    @{users}
        Log To Console    ${ID}
    END

copie 
    Take Screenshot    photo