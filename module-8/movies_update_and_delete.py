import mysql.connector

db = mysql.connector.connect(host="localhost", port="3306", user="root", passwd="FallOut0023!", database="movies")

cursor = db.cursor()


def show_films(cursor, title):
    cursor.execute("SELECT film_name as Name, film_director as Director, genre_name as Genre,"
                   " studio_name as 'Studio Name' FROM ((film "
                   "INNER JOIN genre ON film.genre_id = genre.genre_id) "
                   "INNER JOIN studio on film.studio_id = studio.studio_id)")

    films = cursor.fetchall()

    print("\n  -- {} --".format(title))

    for row in films:
        print(f"Film Name: {row[0]}")
        print(f"Director: {row[1]}")
        print(f"Genre Name ID: {row[2]}")
        print(f"Studio Name: {row[3]}")
        print(" ")


def show_films2(cursor, title):
    cursor.execute("insert into film (film_id, film_name, film_releaseDate, film_runtime, film_director, genre_id, "
                   "studio_id) "
                   "value(4, 'Frankenstein', 1931, 71, 'James Whale', 1, 3)")
    cursor.execute("SELECT film_name as Name, film_director as Director, genre_name as Genre,"
                   " studio_name as 'Studio Name' FROM ((film "
                   "INNER JOIN genre ON film.genre_id = genre.genre_id) "
                   "INNER JOIN studio on film.studio_id = studio.studio_id)")

    films2 = cursor.fetchall()

    print("\n  -- {} --".format(title))

    for row in films2:
        print(f"Film Name: {row[0]}")
        print(f"Director: {row[1]}")
        print(f"Genre Name ID: {row[2]}")
        print(f"Studio Name: {row[3]}")
        print(" ")

def show_films3(cursor, title):
    cursor.execute("UPDATE film SET genre_id = '1' WHERE film_id = 2")
    cursor.execute("SELECT film_name as Name, film_director as Director, genre_name as Genre,"
                   " studio_name as 'Studio Name' FROM ((film "
                   "INNER JOIN genre ON film.genre_id = genre.genre_id) "
                   "INNER JOIN studio on film.studio_id = studio.studio_id)")

    films3 = cursor.fetchall()

    print("\n  -- {} --".format(title))

    for row in films3:
        print(f"Film Name: {row[0]}")
        print(f"Director: {row[1]}")
        print(f"Genre Name ID: {row[2]}")
        print(f"Studio Name: {row[3]}")
        print(" ")

def show_films4(cursor, title):
    cursor.execute("DELETE FROM film WHERE film_id = 1")
    cursor.execute("SELECT film_name as Name, film_director as Director, genre_name as Genre,"
                   " studio_name as 'Studio Name' FROM ((film "
                   "INNER JOIN genre ON film.genre_id = genre.genre_id) "
                   "INNER JOIN studio on film.studio_id = studio.studio_id)")

    films4 = cursor.fetchall()

    print("\n  -- {} --".format(title))

    for row in films4:
        print(f"Film Name: {row[0]}")
        print(f"Director: {row[1]}")
        print(f"Genre Name ID: {row[2]}")
        print(f"Studio Name: {row[3]}")
        print(" ")


show_films(cursor, "Displaying Films")
show_films2(cursor, "Displaying Films After Insert")
show_films3(cursor, "Displaying Films After Update - Changed Alien to Horror")
show_films4(cursor, "Displaying Films After Delete")