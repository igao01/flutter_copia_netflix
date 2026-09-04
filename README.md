# Netflix UI - Flutter

Projeto pessoal desenvolvido em 2021 utilizando Flutter, com o objetivo de reproduzir a interface do aplicativo mobile da Netflix.

A proposta foi explorar a construção de interfaces no Flutter a partir de uma aplicação conhecida como referência, trabalhando principalmente com organização de telas, componentes reutilizáveis, listas, navegação e diferentes formas de disposição dos elementos na tela.

> Este projeto é uma reprodução visual para fins de estudo e não possui relação oficial com a Netflix.

## Sobre o projeto

O projeto reproduz uma interface inspirada na experiência mobile da Netflix, utilizando conteúdos fictícios/demonstrativos para compor as diferentes seções da aplicação.

A construção foi feita com foco na interface, permitindo praticar diferentes recursos disponibilizados pelo Flutter para criação de aplicações mobile.

Entre os elementos reproduzidos estão:

- Menu superior com Séries, Filmes e Categorias
- Destaque de conteúdo na página inicial
- Botões de ação como "Minha lista" e "Assistir"
- Seções organizadas por categorias
- Listas horizontais de filmes e séries
- Barra de navegação inferior
- Tela "Surpreenda-me"
- Elementos posicionados horizontalmente
- Botão flutuante
- Navegação entre telas

## Tecnologias

- Flutter
- Dart

## Recursos do Flutter utilizados

### Componentização

A interface foi construída utilizando componentes separados, permitindo organizar os diferentes elementos da aplicação e reutilizá-los em outras partes das telas.

A componentização foi utilizada principalmente na construção dos cards de filmes e séries, itens de navegação e elementos presentes nas diferentes seções da aplicação.

### ListView

O `ListView` foi utilizado para trabalhar com as listas de conteúdos exibidas na interface.

As categorias possuem listas horizontais de filmes e séries, reproduzindo o comportamento de carrosséis presentes na interface da Netflix.

Essa abordagem também permitiu trabalhar com uma grande quantidade de elementos sem precisar posicioná-los individualmente na tela.

### Listas horizontais

Além das listas tradicionais, o projeto utiliza a disposição horizontal dos elementos para criar as fileiras de conteúdos.

Cada categoria apresenta seus títulos lado a lado, permitindo a navegação horizontal entre os itens.

### Navegação entre telas

O projeto também trabalha com diferentes telas e a navegação entre elas, permitindo separar as funcionalidades e conteúdos da aplicação.

Essa estrutura possibilita trabalhar conceitos de rotas e transição entre diferentes partes da interface.

### Disposição dos elementos

Um dos objetivos do projeto foi reproduzir a organização visual da interface utilizando os recursos de layout do Flutter.

Foram trabalhados elementos posicionados:

- Horizontalmente
- Verticalmente
- Sobrepostos
- Dentro de listas
- Dentro de diferentes seções da tela

A tela "Surpreenda-me", por exemplo, utiliza uma organização horizontal dos elementos para apresentar as opções disponíveis.

### FloatingActionButton

O `FloatingActionButton` foi utilizado como um elemento de ação sobre a interface.

Além de explorar o componente em si, sua utilização permitiu trabalhar posicionamento e sobreposição de elementos em relação ao conteúdo principal da tela.

### Barra de navegação inferior

A aplicação possui uma barra de navegação na parte inferior da tela, com opções como:

- Início
- Em breve
- Downloads

Esse elemento foi utilizado para praticar a organização de diferentes destinos dentro da aplicação.

## Telas

### Tela inicial

A tela inicial apresenta um conteúdo em destaque seguido por diferentes categorias de filmes e séries.

Entre os elementos presentes estão:

- Logo
- Campo de pesquisa
- Perfil
- Tabs superiores
- Conteúdo em destaque
- Botões de ação
- Categorias
- Listas horizontais
- Barra de navegação inferior

### Categorias

As categorias apresentam diferentes conjuntos de conteúdos organizados em listas horizontais.

Exemplos presentes na interface:

- Ação
- Comédia
- Ficção Científica

Cada categoria possui seus próprios cards de conteúdo, permitindo explorar o uso de listas e componentes reutilizáveis.

### Surpreenda-me

A tela "Surpreenda-me" foi utilizada para trabalhar uma disposição diferente dos elementos da interface.

Nela, os componentes são organizados horizontalmente, permitindo explorar diferentes possibilidades de layout utilizando os recursos de construção de interfaces do Flutter.

## Objetivo

O objetivo principal deste projeto foi praticar Flutter através da reprodução de uma interface conhecida, explorando como diferentes componentes podem ser combinados para construir uma aplicação mobile.

O projeto permitiu trabalhar conceitos como:

- Criação de telas
- Componentização
- Listas horizontais
- Tabs
- Navegação
- Organização de layouts
- Posicionamento de elementos
- Componentes reutilizáveis
- Botões e elementos interativos
- Barra de navegação
- FloatingActionButton

## Ano

2021

## Observação

Este projeto foi desenvolvido como estudo pessoal de Flutter e teve como referência a interface mobile da Netflix disponível na época.

A proposta não foi desenvolver uma plataforma de streaming completa, mas reproduzir a interface e explorar os recursos do Flutter utilizados na construção de aplicações mobile.
