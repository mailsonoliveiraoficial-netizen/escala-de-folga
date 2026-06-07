# 🚛 IN-HAUS Escala

Sistema de gestão de escalas de folga desenvolvido para a operação da IN-HAUS Logística.

O objetivo do projeto é automatizar o controle de folgas dos colaboradores, permitindo visualizar rapidamente quem está de folga em cada turno, além de gerenciar funcionários, escalas e configurações do sistema.

---

## 📱 Sobre o Projeto

Atualmente o controle das escalas é realizado de forma manual, o que pode gerar dificuldades na consulta e gerenciamento das folgas.

O IN-HAUS Escala foi criado para centralizar essas informações em um aplicativo simples, rápido e intuitivo.

Principais funcionalidades:

* Controle de escalas de folga
* Cadastro de funcionários
* Gestão de turnos
* Visualização de folgas do dia
* Configuração das escalas
* Dashboard operacional
* Armazenamento local utilizando SQLite

---

## 🏗️ Arquitetura

O projeto foi desenvolvido seguindo conceitos modernos de arquitetura de software:

* Clean Architecture
* SOLID
* Repository Pattern
* Dependency Injection
* State Management com Riverpod
* Banco de Dados SQLite

Estrutura principal:

```text
lib/
│
├── core/
│   ├── database/
│   ├── di/
│   ├── constants/
│   └── utils/
│
├── features/
│
│   ├── auth/
│   ├── employees/
│   ├── schedules/
│   └── settings/
│
├── shared/
│
└── main.dart
```

---

## ⚙️ Tecnologias Utilizadas

* Flutter
* Dart
* SQLite (sqflite)
* Riverpod
* GetIt
* Material 3

---

## 📊 Regras de Negócio

O sistema foi desenvolvido para atender uma operação com:

* 3 turnos (A, B e C)
* Motoristas
* Operadores de Máquinas
* 6 escalas de folga (Escala 1 a Escala 6)

Cada colaborador pertence a uma escala fixa.

O sistema calcula automaticamente os colaboradores que estão de folga conforme a escala ativa do dia.

---

## 🚀 Funcionalidades

### Concluído

* Estrutura Clean Architecture
* Entidades e Regras de Domínio
* SQLite
* DataSources
* Repositories
* Use Cases
* Dependency Injection
* Riverpod
* Cadastro de Funcionários

### Em Desenvolvimento

* Listagem de Funcionários
* Edição de Funcionários
* Exclusão de Funcionários
* Login Administrativo
* Dashboard Operacional
* Motor de Cálculo de Escalas
* Calendário de Folgas
* Relatórios

---

## 🎯 Roadmap

### Fase 1

* Estrutura do Projeto

### Fase 2

* Modelagem do Domínio

### Fase 3

* Repositories

### Fase 4

* Use Cases

### Fase 5

* SQLite

### Fase 6

* Data Layer

### Fase 7

* Dependency Injection

### Fase 8

* Riverpod

### Fase 9

* CRUD de Funcionários

### Fase 10

* Motor de Escalas

### Fase 11

* Dashboard

### Fase 12

* Publicação

---

## 💡 Objetivo de Aprendizado

Este projeto também faz parte da minha jornada de evolução como Desenvolvedor Flutter.

Durante o desenvolvimento estou aplicando conceitos de:

* Arquitetura de Software
* Boas práticas de programação
* Desenvolvimento Mobile
* Persistência de Dados
* Organização de Projetos Escaláveis

---

## 📸 Screenshots

Em breve.

---

## 👨‍💻 Autor

Mailson Oliveira

Desenvolvedor Flutter em formação, construindo projetos reais para aprimorar conhecimentos em arquitetura de software, desenvolvimento mobile e boas práticas de engenharia.

---

## 📄 Licença

Este projeto embora tem uma entrega real, não foi comercializado e está sendo desenvolvido para fins de estudo, aprendizado e evolução profissional.
