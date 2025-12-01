# Projeto: POO com Python + Bottle + JSON

Este é um projeto de template educacional voltado para o ensino de **Programação Orientada a Objetos (POO)** do Prof. Lucas Boaventura, Universidade de Brasília (UnB).

Utiliza o microframework **Bottle**. Ideal para uso em disciplinas introdutórias de Engenharia de Software ou Ciência da Computação.

## 💡 Objetivo

Fornecer uma base simples, extensível e didática para construção de aplicações web orientadas a objetos com aplicações WEB em Python, ideal para trabalhos finais ou exercícios práticos.

---

## 🗂 Estrutura de Pastas

# 🏛️ BSB Cultural - Guia de Descobertas

Projeto de um portal interativo de turismo e cultura para Brasília, desenvolvido utilizando a arquitetura **MVC (Model-View-Controller)** com **Python** e o framework **Bottle**.

O sistema permite listar locais turísticos, filtrar restaurantes por horário de funcionamento, buscar eventos e visualizar detalhes com mapas integrados.

---

## 🗂 Estrutura do Projeto

```text
bsb_cultural/
├── app.py                  # Configuração da aplicação Bottle
├── config.py               # Configurações globais (Porta, Debug)
├── main.py                 # Ponto de entrada (Inicialização do servidor)
├── requirements.txt        # Dependências (bottle)
├── README.md               # Documentação do projeto
│
├── controllers/            # Lógica de controle e rotas
│   ├── base_controller.py  # Classe mãe dos controladores
│   ├── site_controller.py  # Controlador principal (Home, Busca, Detalhes, Filtros)
│   └── static_controller.py# Controlador para servir CSS e Imagens
│
├── models/                 # Definição das Classes (POO)
│   ├── local.py            # Modelo para locais da Home
│   ├── restaurante.py      # Modelo para Gastronomia
│   ├── museu.py            # Modelo para Museus
│   └── evento.py           # Modelo para Eventos
│
├── services/               # Lógica de Negócio e Persistência (JSON)
│   ├── local_service.py
│   ├── gastronomia_service.py
│   ├── museu_service.py
│   └── evento_service.py
│
├── views/                  # Templates HTML (Bottle Engine)
│   ├── layout.tpl          # Estrutura base (Header, CSS global, Footer)
│   ├── home.tpl            # Página inicial com Busca e Destaques
│   ├── gastronomia.tpl     # Listagem de restaurantes com filtro "Aberto Agora"
│   ├── museus.tpl          # Listagem de museus
│   ├── eventos.tpl         # Listagem de eventos culturais
│   ├── detalhes.tpl        # Página genérica com Foto Grande e Google Maps
│   └── busca.tpl           # Página de resultados da pesquisa
│
├── static/                 # Arquivos Estáticos
│   ├── css/
│   │   └── style.css       # Estilização visual (Cores, Cards, Layout)
│   └── img/                # Imagens locais (sesi.jpg, ccbb.jpg, etc.)
│
└── data/                   # Banco de Dados (Arquivos JSON)
    ├── locais.json         # Destaques da Home
    ├── gastronomia.json    # Restaurantes com horários
    ├── museus.json         # Museus
    └── eventos.json        # Agenda cultural

---

## 📁 Descrição das Pastas

### `controllers/`

Contém as classes responsáveis por lidar com as rotas da aplicação. Exemplos:

- `base_controller.py: Classe base com configurações comuns.

-site_controller.py: O controlador principal. Gerencia a Home, o sistema de Busca, o filtro de "Aberto Agora" e as rotas de detalhes.

-static_controller.py: Responsável por servir arquivos de CSS e imagens.

### `models/`

Define as classes que representam os dados da aplicação. Exemplo:

- `local.py: Classe para os destaques da Home.

-restaurante.py: Classe com atributos extras como horario.

-museu.py: Classe para museus.

-evento.py: Classe para eventos com data e categoria.

### `services/`

Responsável por salvar, carregar e manipular dados usando arquivos JSON. Exemplo:

- `local_service.py, gastronomia_service.py, museu_service.py, evento_service.py: Contêm métodos como get_all() e get_by_id() para buscar dados específicos.

### `views/`

Contém os arquivos `.tpl` utilizados pelo Bottle como páginas HTML:

- `layout.tpl: Estrutura base (Cabeçalho harmônico e Rodapé) usada em todas as páginas.

-home.tpl: Página inicial com barra de busca funcional e destaques.

-gastronomia.tpl: Listagem de restaurantes com lógica de filtro de horário.

-detalhes.tpl: Página dinâmica que exibe foto grande, informações e Google Maps integrado.

busca.tpl, museus.tpl, eventos.tpl: Listagens específicas.

### `static/`

Arquivos estáticos como:

- `css/style.css: Estilização global moderna (Paleta Slate & Indigo).

-img/: Imagens locais baixadas (ex: sesi.jpg, mangai.jpg) para garantir carregamento rápido.

### `data/`

Armazena os arquivos `.json` que simulam o banco de dados:

- `css/style.css: Estilização global moderna (Paleta Slate & Indigo).

-img/: Imagens locais baixadas (ex: sesi.jpg, mangai.jpg) para garantir carregamento rápido.
---

## ▶️ Como Executar

1. Crie o ambiente virtual na pasta fora do seu projeto:

```bash
python -m venv venv
source venv/bin/activate  # Linux/Mac
venv\\Scripts\\activate     # Windows
```

2. Entre dentro do seu projeto criado a partir do template e instale as dependências:

```bash
pip install -r requirements.txt
```

3. Rode a aplicação:

```bash
python main.py
```

4. Accese sua aplicação no navegador em: [http://localhost:8080](http://localhost:9000)

---

## ✍️ Personalização

Para adicionar novos modelos (ex: Atividades):

1. Crie a classe no diretório **models/**.

2. Crie o service correspondente para manipulação do JSON.

3. Crie o controller com as rotas.

4. Crie as views .tpl associadas.

---

## 🧠 Autor e Licença

Projeto desenvolvido como template didático para disciplinas de Programação Orientada a Objetos, baseado no [BMVC](https://github.com/hgmachine/bmvc_start_from_this).
Você pode reutilizar, modificar e compartilhar livremente.
