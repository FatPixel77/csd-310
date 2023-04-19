import mysql.connector

mydb = mysql.connector.connect(host="localhost", port="3306", user="root", passwd="FallOut0023!", database="movies")

mycursor = mydb.cursor()
mycursor.execute("show tables")

for db in mycursor:
    print(db)