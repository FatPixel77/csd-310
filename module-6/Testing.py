import mysql.connector

mydb = mysql.connector.connect(host="localhost", port="3306", user="root", passwd="FallOut0023!")

mycursor = mydb.cursor()
mycursor.execute("create database one")

for db in mycursor:
    print(db)