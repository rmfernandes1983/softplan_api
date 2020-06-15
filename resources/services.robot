***Settings***
Documentation   Encapsular algumas chamdas de serviços

Library         RequestsLibrary
Library         Collections
Library         OperatingSystem


***Keywords***
### Helpers
Get Json
    [Arguments]     ${json_file}

    ${file}=       Get File          ${EXECDIR}/resources/fixtures/${json_file}
    ${json}=       evaluate          json.loads($file)   json

    [return]     ${json}

### Keywords

Post Product
    [Arguments]       ${payload}

    Create Session    FakeRestAPI          https://fakerestapi.azurewebsites.net

    &{headers}=       Create Dictionary     Content-Type=application/json

    ${resp}=          Post Request   FakeRestAPI      /api/Books    data=${payload}     headers=${headers}

    [return]          ${resp}

Get Product
    [Arguments]     ${id}   

    Create Session    FakeRestAPI          https://fakerestapi.azurewebsites.net
    
    &{headers}=       Create Dictionary     Content-Type=application/json

    ${resp}           Get Request     FakeRestAPI       /api/Books/${id}     headers=${headers}

    [return]        ${resp}