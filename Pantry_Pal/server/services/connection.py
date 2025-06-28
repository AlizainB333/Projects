import mysql.connector
import os
from dotenv import load_dotenv


def connect_to_db():
    load_dotenv()

    DB_HOST = os.getenv('DB_HOST')
    DB_USER = os.getenv('DB_USER')
    DB_PASSWORD = os.getenv('DB_PASSWORD')
    DB_NAME = os.getenv('DB_NAME')


    if ( (DB_HOST == None) | (DB_USER == None) | (DB_PASSWORD == None) | (DB_NAME == None)):
        print("Set environment variables 'DB_HOST', 'DB_USER', 'DB_PASSWORD' and 'DB_NAME'")
        exit(1)

    connection = mysql.connector.connect(
        host=DB_HOST,
        user=DB_USER,
        password=DB_PASSWORD,
        database=DB_NAME
    )

    if connection and connection.is_connected():
        print("Successfully connected to the database")
    else:
        exit(1)

    return connection