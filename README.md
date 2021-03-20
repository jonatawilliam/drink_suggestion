# Drink Suggestions

## The drink searcher

Executing to Jonata William

### Introdução

A aplicação web Drink Suggestion é voltada a recomendar drinks ao usuário baseado em dados
pré existente e através de uma combinação de preferências e indicado um drink caso os exista.

### Requisitos para rodar o projeto

O projeto está utilizando o ruby versão `2.7`. A versão do rails é a `5.1.4`.

*OBS:* Não esqueça de rodar o `db:seed` pois já pré-cadastramos uma série de drinks com diversos atributos
para você realizar seus testes.

## Testar Solução

Se você não tiver o Docker no computador, siga as instruções de instalação no Docker, Github([more info here](https://github.com/docker/docker-install)).

Clone o projeto no diretório de sua escolha.
```
git clone https://github.com/jonatawilliam/drink-suggestion
cd your-project-name
```

Execute o comando do Docker para compilação e executar em background.
```
docker-compose up -d
```

Será criado o seguinites serviços:

```sh
Creating drink_suggestion_postgresql_1 ... done
Creating drink_suggestion_drink-suggestion_1 ... done
Creating drink_suggestion_nginx_1            ... done
```

Agora execute o comando *rails:seed* para popular o banco de dados.
```
docker-compose exec drink-suggestion bundle exec rails db:seed
```


A aplicação estará disponível no endereço:
[http://localhost](http://localhost)




### Objetivo geral

Implementar novas funcionalidades ao um sistema de busca e recomendação de drinks.

#### Objetivos principais

* Implementar uma funcionalidade de recomendação de drink para o usuário utilizando os campos que existem no modelo de Drink, ou seja, permitir que o usuário informe as preferências dele em um formulário, e usar essas preferências para recomendar uma ou mais bebidas para ele. Fique a vontade para decidir como e quantas informações o usuário vai informar, e qual algoritmo vai ser utilizado para escolher a recomendação para o usuário.

#### Objetivos secundários

* Implementar um filtro simples por nome na tela inicial, trazendo os resultados ordenados por nome e adicionando paginação para mostrar somente 10 itens por página.


