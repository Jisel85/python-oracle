### 1. Configurar la base de datos
- Instalar docker y dodker-compose
- Entrar a la carpeta `1_database`
- Ejecutar `docker-compose up`
- Para conectarse desde el cliente dbeaver se deben colocar los siguientes datos:
    host: locahost
    port: 1521
    database: ucentral
    username: jisel
    password: 12341234
- Ejecutar el script ddl-create.sql 

### 2. Importar la data

- `pip install oracledb pandas`
- Ejecutar el `2_data/import.ipynb`
- Se puede ejecutar con jupyter o con la extensión de jupyter para vscode
- Se exportó el SQL de los inserts creados en 2_data/backup
