# 🛒 AV2 - Banco de Dados Supermercado

> Projeto acadêmico de modelagem e implementação de banco de dados relacional, simulando o sistema de um supermercado tradicional.

[![SQL Server](https://img.shields.io/badge/SQL%20Server-Express-CC2927?style=flat&logo=microsoft-sql-server&logoColor=white)](https://www.microsoft.com/sql-server)
[![Status](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellow)]()
[![Pontuação](https://img.shields.io/badge/Valor-80%20pontos-blue)]()

---

## 📋 Sobre o Projeto

Este repositório contém o desenvolvimento da **AV2 — Laboratório de Banco de Dados**, um trabalho em grupo que envolve a modelagem completa de um banco de dados relacional para um **supermercado tradicional**, incluindo:

- ✅ Modelagem de 5 tabelas relacionadas
- ✅ Criação de chaves primárias e estrangeiras
- ✅ 100 comandos `INSERT` (20 por tabela)
- ✅ 100 comandos `UPDATE` com cláusula `WHERE`
- ✅ 100 comandos `DELETE` com cláusula `WHERE`
- ✅ 50 expressões `SELECT` com `JOIN`, `WHERE`, funções e `GROUP BY`

**Disciplina:** Laboratório de Banco de Dados
**Trabalho:** AV2 (valor: 80 pontos)

---

## 👥 Equipe

| Integrante | Função | Responsabilidades |
|------------|--------|-------------------|
| **[Nome 1]** | Arquiteto do Banco / Coordenador | Modelagem, criação das tabelas, coordenação do Git, montagem do documento final |
| **[Nome 2]** | Dev — CATEGORIA + FORNECEDOR | INSERTs, UPDATEs, DELETEs e SELECTs dessas tabelas |
| **[Nome 3]** | Dev — CLIENTE | INSERTs, UPDATEs, DELETEs e SELECTs dessa tabela |
| **[Nome 4]** | Dev — PRODUTO | INSERTs, UPDATEs, DELETEs e SELECTs dessa tabela |
| **[Nome 5]** | Dev — VENDA / Documentação | INSERTs, UPDATEs, DELETEs, SELECTs e captura de prints |

---

## 🗄️ Modelagem do Banco

O banco possui **5 tabelas** relacionadas, modeladas a partir do contexto de um supermercado tradicional:

```
┌──────────────┐         ┌──────────────┐
│  CATEGORIA   │         │  FORNECEDOR  │
│──────────────│         │──────────────│
│ id_categoria │         │ id_fornecedor│
│ nome         │         │ razao_social │
│ descricao    │         │ cnpj         │
│ ...          │         │ ...          │
└──────┬───────┘         └──────┬───────┘
       │                        │
       │   FK              FK   │
       └────────┐      ┌────────┘
                ▼      ▼
            ┌──────────────┐
            │   PRODUTO    │
            │──────────────│
            │ id_produto   │
            │ nome         │
            │ preco        │
            │ estoque      │
            │ id_categoria │ (FK)
            │ id_fornecedor│ (FK)
            └──────┬───────┘
                   │
                   │ FK     ┌──────────────┐
                   │        │   CLIENTE    │
                   │        │──────────────│
                   ▼        │ id_cliente   │
            ┌──────────────┐│ nome         │
            │    VENDA     ││ cpf          │
            │──────────────││ ...          │
            │ id_venda     │└──────┬───────┘
            │ id_cliente   │◄──FK──┘
            │ id_produto   │◄──FK── (do PRODUTO)
            │ quantidade   │
            │ valor_total  │
            └──────────────┘
```

### Resumo das tabelas

| Tabela | Tipo | PK | FKs |
|--------|------|-----|-----|
| **CATEGORIA** | Pai | `id_categoria` | — |
| **FORNECEDOR** | Pai | `id_fornecedor` | — |
| **CLIENTE** | Pai | `id_cliente` | — |
| **PRODUTO** | Filha | `id_produto` | `id_categoria`, `id_fornecedor` |
| **VENDA** | Filha | `id_venda` | `id_cliente`, `id_produto` |

---

## 📁 Estrutura do Repositório

```
av2-banco-supermercado/
├── README.md                       ← este arquivo
├── 00_criar_banco.sql              ← cria o banco "Supermercado"
├── 01_criar_tabelas.sql            ← cria as 5 tabelas
│
├── inserts/                        ← 100 INSERTs (20 por tabela)
│   ├── inserts_categoria.sql
│   ├── inserts_fornecedor.sql
│   ├── inserts_cliente.sql
│   ├── inserts_produto.sql
│   └── inserts_venda.sql
│
├── updates/                        ← 100 UPDATEs
│   ├── updates_categoria.sql
│   ├── updates_fornecedor.sql
│   ├── updates_cliente.sql
│   ├── updates_produto.sql
│   └── updates_venda.sql
│
├── deletes/                        ← 100 DELETEs
│   ├── deletes_categoria.sql
│   ├── deletes_fornecedor.sql
│   ├── deletes_cliente.sql
│   ├── deletes_produto.sql
│   └── deletes_venda.sql
│
├── selects/                        ← 50 SELECTs com joins
│   ├── selects_categoria_fornecedor.sql
│   ├── selects_cliente.sql
│   ├── selects_produto.sql
│   └── selects_venda.sql
│
├── prints/                         ← screenshots dos resultados
└── docs/
    └── trabalho_escrito.docx       ← documento final
```

---

## 🚀 Como Executar

### Pré-requisitos

- **SQL Server Express** (ou superior) instalado
- **SQL Server Management Studio (SSMS)** instalado
- **Git** instalado ([download](https://git-scm.com/download/win))

### Passo 1: Clonar o repositório

```bash
git clone https://github.com/pedrohcboa/av2-banco-supermercado.git
cd av2-banco-supermercado
```

### Passo 2: Executar os scripts no SSMS

Abra os arquivos no SSMS **nesta ordem** (importante!):

1. `00_criar_banco.sql` — cria o banco do zero
2. `01_criar_tabelas.sql` — cria as 5 tabelas
3. Arquivos da pasta `inserts/` — popular o banco
4. Arquivos da pasta `updates/` — comandos de atualização
5. Arquivos da pasta `deletes/` — comandos de exclusão
6. Arquivos da pasta `selects/` — consultas

> ⚠️ Os INSERTs devem ser executados **nesta ordem** para respeitar as chaves estrangeiras:
> `CATEGORIA → FORNECEDOR → CLIENTE → PRODUTO → VENDA`

---

## 📅 Roteiro de Desenvolvimento

O projeto está dividido em fases para permitir trabalho em paralelo:

### ✅ Fase 1 — Setup Inicial
- [x] Criar banco de dados
- [x] Criar tabelas CATEGORIA e FORNECEDOR
- [ ] Criar tabelas CLIENTE, PRODUTO e VENDA
- [ ] Subir tudo no GitHub e convidar grupo

### ⏳ Fase 2 — Configuração do Grupo
- [ ] Cada integrante clona o repositório
- [ ] Cada integrante instala SQL Server + SSMS
- [ ] Todos executam os scripts iniciais

### ⏳ Fase 3 — INSERTs (em ordem por dependência)
- [ ] CATEGORIA e FORNECEDOR (sem dependências)
- [ ] CLIENTE (sem dependências)
- [ ] PRODUTO (depende de CATEGORIA e FORNECEDOR)
- [ ] VENDA (depende de CLIENTE e PRODUTO)

### ⏳ Fase 4 — UPDATEs, DELETEs e SELECTs
- [ ] Todos os integrantes trabalham em paralelo nas suas tabelas

### ⏳ Fase 5 — Documentação e Apresentação
- [ ] Captura de prints dos SELECTs
- [ ] Montagem do documento Word
- [ ] Ensaio da apresentação em sala

---

## 🛠️ Fluxo de Trabalho com Git

Para evitar conflitos, **siga sempre este fluxo**:

```bash
# 1. Antes de começar a editar, atualize seu repositório local
git pull

# 2. Faça suas alterações nos arquivos .sql e teste no SSMS

# 3. Quando terminar, envie pro GitHub
git add .
git commit -m "Mensagem descritiva do que mudou"
git push
```

### 📝 Regras de Ouro

- ✅ **Sempre `git pull` antes de começar a editar**
- ✅ **Sempre `git push` depois de salvar suas mudanças**
- ✅ **Mensagens de commit descritivas** — ex: `"Adiciona 20 INSERTs em CLIENTE"`
- ❌ **Nunca edite arquivo de outra pessoa** sem combinar antes
- ⚠️ **Se aparecer "conflict":** avise o coordenador (Pedro)

---

## 📊 Critérios de Avaliação

| Critério | Pontos |
|----------|--------|
| Modelagem correta das 5 tabelas | 10 |
| Relacionamentos e chaves estrangeiras | 10 |
| 100 comandos INSERT coerentes | 20 |
| 100 comandos UPDATE com WHERE correto | 20 |
| 100 comandos DELETE com WHERE correto | 20 |
| 50 comandos de SELECT | 10 |
| Apresentação, organização, clareza e comentários | 10 |
| **TOTAL** | **80** |

---

## 🧰 Tecnologias Utilizadas

- **SQL Server Express 17** — SGBD relacional
- **SQL Server Management Studio (SSMS)** — IDE para gerenciamento
- **Git + GitHub** — controle de versão e colaboração
- **Transact-SQL (T-SQL)** — dialeto SQL do SQL Server

---

## 📄 Licença

Este projeto é de cunho **estritamente acadêmico** e foi desenvolvido como atividade avaliativa para a disciplina de Laboratório de Banco de Dados.

---

<div align="center">

**Feito com 💻 e ☕ pela equipe**

</div>
