***Settings***
Documentation       https://fakerestapi.azurewebsites.net/swagger/ui/index#!/Books/Books_Get

Resource    ../resources/services.robot

***Test Cases***
Retornar unico livro
# O código abaixo está comentado para implantação de uma consulta de um livro onde o mesmo seria incluído nesse caso de teste


#    ${payload}=     Get Json          unico_livro.json
#    ${livro}=       Post Product      ${payload}

#    ${id}=          Convert To String   ${livro.json()['id']}
    ${resp}=        Get Product         1  #${id}

    Status Should Be      200       ${resp}

#    Should Be Equal       ${resp.json()['title']}       ${payload['title']}

Retornar todos os livros

    ${resp}=        Get Product         ${EMPTY}

    Status Should Be      200       ${resp}