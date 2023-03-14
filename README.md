<h1>Projeto - API Produtos (Diário de Viagem) </h1> 

<ul>
  <li>Ruby 3.1.3</li>
  <li>Rails 7.0.4</li>
</ul>

<h3>Introdução</h3>
Aplicação Rails API-only, dispondo informações para o projeto principal Diário de Viagem. 

<h3>Documentação da API</h3>

 * [Obter lista de produtos](#obter-lista-de-produtos)

 * [Consulta de produtos através de busca](#consulta-de-produtos-através-de-busca)

 * [Status Codes](#status-code)

### Obter lista de Produtos

**Endpoint: GET /api/v1/products**

<p align = "justify">Retornos:</p>

<p align = "justify">200 (Sucesso)</p>

```json
[
  {
    "id":1,
    "name":"Toalha de Microfibra",
    "code":"8543246",
    "brand":null,
    "size":"M",
    "status":0,
    "price":"70.0",
    "description":"Toalha de microfibra tamanho médio. Prática, compacta e com boa absorção.",
    "product_category_id":1,
    "image_url":"http://localhost:4000/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a2377815190d0124086b9738eb29151c2ef2371f/toalha.jpeg"
  },
  {
    "id":2,
    "name":"Garrafa de trilha 600ml",
    "code":"5976423",
    "brand":null,
    "size":"U",
    "status":0,
    "price":"50.0",
    "description":"Garrafa abre facil com suporte e medida","product_category_id":1,
    "image_url":"http://localhost:4000/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--dabf26901769956c897682c222be80d59b66282d/garrafa.jpeg"
  }
]
```
### Consulta de produtos através de busca

**Endpoint: GET /api/v1/products/query?id=TEXTOPESQUISADO**

<p align = "justify">Retornos:</p>

<p align = "justify">200 (Sucesso)</p>

```json
[
  {
    "id":2,
    "name":"Garrafa de trilha 600ml",
    "code":"5976423",
    "brand":null,
    "size":"U",
    "status":0,
    "price":"50.0",
    "description":"Garrafa abre facil com suporte e medida","product_category_id":1,
    "image_url":"http://localhost:4000/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--dabf26901769956c897682c222be80d59b66282d/garrafa.jpeg"
  }
]
```

### Status Codes

Retorna os status:

| Status Code | Description |
| :--- | :--- |
| 200 | `OK` |
| 404 | `NOT FOUND` |
| 500 | `INTERNAL SERVER ERROR` |

## Como rodar a aplicação

<p align = "justify"> No terminal, clone o projeto: </p>

```
$ git clone git@github.com:AnitaLuri/products-app.git
```

<p align = "justify"> Entre na pasta do projeto: </p>

```
$ cd products-app
```

<p align = "justify"> Criar o container Docker: </p>

```
$ docker-compose build
```

<p align = "justify"> Popule a aplicação: </p>

```
$ docker-compose run --service-ports rails bash
$ rails db:seed
$ exit
```

<p align = "justify"> Visualize os testes: </p>

```
$ docker-compose run --service-ports rails bash
$ rspec
$ exit

```

<p align = "justify"> Visualize no navegador: </p>

```
$ docker-compose up
```

* Acesse http://localhost:4000/
