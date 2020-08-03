# API TESTE DEV NOBORDIST

Este projeto tem como finaliade a criação de uma api JSON RESTful para cadastro de veiculos

### Configuração 
* baco de dados postgres 
* Docker and Postgres container
* Postman Canary

### Rotas 

* http://localhost:3000/api/v1/veiculos (LISTA COMPLETA DE VEICULOS)

* http://localhost:3000/api/v1/veiculos (CADASTRA NOVO VEICULO)

* http://localhost:3000/api/v1/veiculos/:id (CONSULTA VEICULO)

* http://localhost:3000/api/v1/veiculos/:id (ATUALIZA O CADASTRO DE UM VEICULO)

* http://localhost:3000/api/v1/veiculos/:id (APAGA UM VEICULO)

## LISTA COMPLETA DE VEICULOS

`
[
    {
        "id": 10,
        "marca": "Chevrolet",
        "veiculo": "Celta lt 1.0",
        "ano": 2013,
        "descricao": "veiculo economico e total flex",
        "vendido": false,
        "created_at": "2020-08-03T03:08:43.316Z",
        "updated_at": "2020-08-03T03:08:43.316Z"
    },
    {
        "id": 11,
        "marca": "Chevrolet",
        "veiculo": "Onix Prime ",
        "ano": 2020,
        "descricao": "veiculo completo de fabrica",
        "vendido": false,
        "created_at": "2020-08-03T03:15:15.133Z",
        "updated_at": "2020-08-03T03:15:15.133Z"
    }
]
`
* exemplo de vazio

`
  {
    mensagem: 'Sem veiculos cadastrados!'
  }
`
## CADASTRA NOVO VEICULO
* parametros emviados no formato json

`
  {
    "veiculo":
    {
      "veiculo": "Onix Prime ",
      "marca": "Chevrolet",
      "ano":"2020",
      "descricao":
      "veiculo completo de fabrica",
      "vendido":"0"
    }
  }
`
## CONSULTA VEICULO
* parametro id=6

`
  {
    "id": 6,
    "marca": "Chevrolet",
    "veiculo": "Celta lt 1.0",
    "ano": 2013,
    "descricao": "veiculo economico e total flex",
    "vendido": false,
    "created_at": "2020-08-03T03:04:50.322Z",
    "updated_at": "2020-08-03T03:04:50.322Z"
  }

`
## ATUALIZA O CADASTRO DE UM VEICULO
* parametro id=6
* envio de parametros via body no formato json abaixo:

`
  {
  "veiculo":
    {
      "veiculo": "Onix Prime",
      "marca": "Chevrolet",
      "ano":"2020",
      "descricao":"Veiculo completo de fabrica",
      "vendido":"1"
    }
  }
`
## APAGA UM VEICULO

* parametro id=6 para remoção de veiculo.
* resposta:
`
{
  "mensagem": "Veiculo Deletado!"
}
`