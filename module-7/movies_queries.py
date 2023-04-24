import mysql.connector

mydb = mysql.connector.connect(host="localhost", port="3306", user="root", passwd="FallOut0023!", database="movies")

mycursor = mydb.cursor()

#Query1
mycursor.execute("Select * from studio")
studio = mycursor.fetchall()

#Query2
mycursor.execute("Select * from genre")
genre = mycursor.fetchall()

#Query3
mycursor.execute("select * from film where film_runtime < 120")
film1 = mycursor.fetchall()

#Query4
mycursor.execute("select film_name, film_director from film order by film_director")
film2 = mycursor.fetchall()

#Printing Query1 Results
print("-- DISPLAYING Studio RECORDS --")
for row in studio:
    print(f"Studio ID: {row[0]}")
    print(f"Studio Name: {row[1]}")
    print(" ")

#Printing Query2 Results
print("-- DISPLAYING Genre RECORDS --")
for row in genre:
    print(f"Genre ID: {row[0]}")
    print(f"Genre Name: {row[1]}")
    print(" ")

#Printing Query3 Results
print("-- DISPLAYING Short Film RECORDS --")
for row in film1:
    print(f"Film Name: {row[1]}")
    print(f"Runtime: {row[3]}")
    print(" ")

#Printing Query4 Results
print("-- DISPLAYING Director RECORDS in Order --")
for row in film2:
    print(f"Film Name: {row[0]}")
    print(f"Director: {row[1]}")
    print(" ")
