Funcionalidade: Criação de usuário
Eu como tester
Quero acessar API de users
Para realizar a criação de um usuário

Cenário: Criar usuário
    Dado que estou na API de users
    Quando insiro o body de criação de usuário
    E aplico o método POST
    E envio a requisição
    Então valido o status code retornado 
    E salvo o id do usuário criado

Funcionalidade: Armazenar informações do usuário criado
Eu como tester
Quero acessar API de users
Para realizar busca pelo usuário criado e armazenar as informações retornadas

Cenário: Armazenar informações do usuário criado
    Dado que estou na API de users
    Quando insiro o id do usuário da url de users
    E aplico o método GET
    E envio a requisição
    Então armazeno todas as informações retornadas

Funcionalidade: Realizar um post para o usuário
Eu como tester
Quero acessar API de posts
Para realizar um post para o usuário criado

Cenário: Realizar post
    Dado que estou na API de posts
    Quando insiro o body de criação de post
    E insiro o id do usuário na url de posts
    E aplico o método POST
    E envio a requisição
    Então valido o status code retornado

Funcionalidade: Armazenar informações do post criado
Eu como tester
Quero acessar API de posts
Para realizar busca do post realizado pelo usuário e armazenar as informações retornadas

Cenário: Armazenar informações do post
    Dado que estou na API de posts
    Quando insiro o id do usuário na url de posts
    E aplico o método GET
    E envio a requisição
    Então armazeno todas as informações retornadas

Funcionalidade: Pesquisar por nome de usuário
Eu como tester
Quero acessar a API de users
Para realizar busca por nome de usuários

Cenário: Buscar usuário
    Dado que estou na API users
    Quando insiro o nome do usuário na url de users
    E aplico o método GET
    E envio a requisição
    Então deve ser retornado os dados do usuário aplicado no filtro

Funcionalidade: Armazenar ID do quinto usuário
Eu como tester
Quero acessar API de users
Para armazenar o id do quinto usuário retornado

Cenário: Armazenar id retornado
    Dado que estou na API de users
    Quando aplico o método GET 
    E envio a requisição 
    Então armazeno o ID do usuário retornado na quinta posição

Funcionalidade: Validar retorno dos posts
Eu como tester
Quero acessar API de posts
Para realizar busca de posts por usuário e validar o retorno

Cenário: Validar retorno dos posts
    Dado que estou na API de posts
    Quando insiro o id do usuário na url de posts
    E aplico o método GET
    E envio a requisição
    Então valido o status code retornado
    E valido o retorno dos posts feitos pelo usuário