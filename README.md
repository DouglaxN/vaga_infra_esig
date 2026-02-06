# PostgreSQL Dump & Restore Automation

Este projeto demonstra a automação de **criação**, **backup (dump)** e **restauração (restore)** de um banco de dados PostgreSQL utilizando **scripts SQL e Bash**, seguindo boas práticas de infraestrutura e DevOps.

O objetivo é mostrar, de forma prática, como garantir **reprodutibilidade**, **organização** e **segurança** em ambientes de teste.

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
```text
--- 
## 📄 Script 1 – Criação do Banco (create_db.sql)
Este script cria o banco de dados inicial, uma tabela de exemplo e insere um registro para testes.

### Conteúdo
-- Criação do banco d_database
-- Criação da tabela users
-- Inserção de um usuário de exemplo

##Como executar
```text
psql postgres -f postgres/create_db.sql
```text

## 📄 Script 2 – Dump do Banco (dump_db.sh)
Este script gera um backup completo do banco PostgreSQL em formato .sql, utilizando timestamp para evitar sobrescrita de arquivos.

### O que ele faz
-- Cria o diretório db_dumps se não existir
-- Executa o pg_dump
-- Gera um arquivo versionado por data e hora

### Tornar executável
```text
chmod +x postgres/dump_db.sh
```text
