# PostgreSQL Dump & Restore Automation

Este projeto demonstra a automação de **criação**, **backup (dump)** e **restauração (restore)** de um banco de dados PostgreSQL utilizando **scripts SQL e Bash**.

---

## 📂 Estrutura do Projeto

```text
.
├── postgres/
│   ├── create_db.sql
│   ├── dump_db.sh
│   └── restore_db.sh
├── db_dumps/
│   └── d_database_YYYYMMDD_HHMMSS.sql
└── README.md
````

---

## 🛠️ Pré-requisitos

* macOS ou Linux
* PostgreSQL instalado
* `psql` e `pg_dump` disponíveis no PATH

No macOS (Homebrew):

```bash
brew install postgresql
brew services start postgresql
```

---

## 📄 Script 1 – Criação do Banco (`create_db.sql`)

Este script cria o banco de dados inicial, uma tabela de exemplo e insere um registro para testes.

### Conteúdo

* Criação do banco `d_database`
* Criação da tabela `users`
* Inserção de um usuário de exemplo

### Como executar

```bash
psql postgres -f postgres/create_db.sql
```

---

## 📄 Script 2 – Dump do Banco (`dump_db.sh`)

Este script gera um **backup completo** do banco PostgreSQL em formato `.sql`, utilizando timestamp para evitar sobrescrita de arquivos.

### O que ele faz

* Cria o diretório `db_dumps` se não existir
* Executa o `pg_dump`
* Gera um arquivo versionado por data e hora

### Tornar executável

```bash
chmod +x postgres/dump_db.sh
```

### Executar o dump

```bash
./postgres/dump_db.sh
```

### Resultado esperado

```text
db_dumps/d_database_YYYYMMDD_HHMMSS.sql
```

---

## 📄 Script 3 – Restore do Banco (`restore_db.sh`)

Este script restaura o banco de dados a partir de um arquivo de dump SQL, garantindo um ambiente limpo.

### O que ele faz

* Valida se o arquivo de dump foi informado
* Verifica se o arquivo existe
* Remove o banco existente
* Cria o banco novamente
* Aplica o dump no banco recriado

### Tornar executável

```bash
chmod +x postgres/restore_db.sh
```

### Executar o restore

```bash
./postgres/restore_db.sh ./db_dumps/d_database_YYYYMMDD_HHMMSS.sql
```

---
## 👤 Autor

Douglas Nunes

```

---
