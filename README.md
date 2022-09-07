# Northwind-Traders
Project for CSE 560 DMQL - Northwind Traders

# INSTALLATION

```py
pip install -r requirements.txt
```

# EXECUTION

* Ensure you're inside the dqml directory, if not `cd` into it. 

* Ensure you've created a `.env` file with the file structure as given below. 

> Pending 

# Resources Used

[Dot-env](https://pypi.org/project/python-dotenv/)

[Use postgres with flask](https://www.digitalocean.com/community/tutorials/how-to-use-a-postgresql-database-in-a-flask-application)

# ENVIRONMENT VARIABLE FILE STRUCTURE

* File Name = `.env`
* Location  = `northwind_traders_app/.env`

```dosini
DB_HOST="localhost"
DB_NAME="northwind_traders"
DB_USERNAME=""
DB_PASSWORD=""
DB_PORT=5432
```