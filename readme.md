# 🚗 Classic Cars Query App (SQLite + Node.js)

A lightweight Node.js project using [PGlite](https://github.com/electric-sql/pglite) and SQLite to explore classic car data with modular SQL queries.

---

## 📦 Features

- In-memory SQLite database using `@electric-sql/pglite`
- Modular SQL query structure (`query/` folder)
- CLI support for running specific SQL files
- Easy to extend and customize

---

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/developeremdad/sql
cd sql

```

```bash
npm install
```

## Run
```
node fileName_from_query_folder
```

## 📁 Project Structure

The project directory structure looks like this:
```
.
├── index.js          # Main entry point
├── query.sql         # Legacy or default query file
├── query/            # Folder for modular SQL files
│   ├── basic.sql     # Example query file
│   ├── advanced.sql  # Another query file
│   └── ...           # Additional queries can go here
├── package.json      # Project dependencies and scripts
└── README.md         # This file
```

## 🛠 Add a New Query
Create a New SQL File: To add a new query, create a new .sql file inside the query/ folder. For example, *query/stats.sql.*

## 🧠 Powered By

- Node.js: The runtime for executing JavaScript on the server side.

- PGlite: A lightweight SQL client library used to connect and interact with SQLite databases.

- SQLite: A self-contained, serverless SQL database engine.