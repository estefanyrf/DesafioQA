Funcionalidade: Acessar site jsonplaceholder e realizar teste e2e
Eu como tester
Quero acessar link jsonplaceholder
Para realização de testes e2e

Cenário: Acessar menu guide
    Dado que estou na tela de inicio do site jsonplaceholder
    Quando inspeciono o link Guide
    E realizo o click sobre o mesmo
    Então o site é redirecionado para a tela do menu Guide
    E valido titulo da pagina para me certificar que estou na pagina correta

Funcionalidade: Acessar link de albums e validar body
Eu como tester
Quero acessar link albums
Para capturar os dados retornados e validar body

Cenário: Acessar link de albums
    Dado que estou na tela do menu Guide
    Quando inspeciono o link /albums/1/photos
    E realizo o click sobre o mesmo
    Então o site é redirecionado para a tela de retorno dos bodys de albums
    E salvo e realizo formatação dos dados retornados

Cenário: Validar body de albums
    Dado que estou na tela de retorno dos bodys de albums
    Quando busco pelo body correspondente do id 6
    E realizo expect para certificar tipagem de todos os campos
    Então o teste valida o retorno de todos os campos do body correspondete ao id 6