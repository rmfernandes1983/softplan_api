***Settings***
Documentation       https://fakerestapi.azurewebsites.net/swagger/ui/index#!/Books/Books_Get

Resource    ../resources/services.robot

***Test Cases***
Cadastrar livro
    
    ${payload}=     Get Json          livro.json
    ${resp}=        Post Product      ${payload}

    Status Should Be    200    ${resp}