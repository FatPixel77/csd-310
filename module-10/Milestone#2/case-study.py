import mysql.connector

db = mysql.connector.connect(host="localhost", port="3306", user="root", passwd="FallOut0023!",
                             database="bacchuswinery")

cursor = db.cursor()


def show_employee(cursor, title):
    cursor.execute("SELECT Employee_id as 'Employee', Employee_first_name as 'First Name', "
                   "Employee_last_name as 'Last Name', Employee_dept_id as 'Dept. id', Employee_time as 'Hours',"
                   "Start_date as 'Start Date', Term_date as 'Fired Date' From employee")

    employeetb = cursor.fetchall()

    print("\n  -- {} --".format(title))

    for row in employeetb:
        print(f"Employee: {row[0]}")
        print(f"First Name: {row[1]}")
        print(f"Last Name: {row[2]}")
        print(f"Dept. id': {row[3]}")
        print(f"Hours: {row[4]}")
        print(f"Start Date: {row[5]}")
        print(f"Fired Date: {row[6]}")
        print(" ")


def show_Dept(cursor, title):
    cursor.execute("SELECT Department_id as 'Dept ID', Dept_name as 'Name',"
                   "Dept_head as 'Head' FROM department")

    Depttb = cursor.fetchall()

    print("\n  -- {} --".format(title))

    for row in Depttb:
        print(f"Dept ID: {row[0]}")
        print(f"Name: {row[1]}")
        print(f"Head: {row[2]}")

        print(" ")


def show_Dist(cursor, title):
    cursor.execute("SELECT Distribution_id as 'Distribution ID', Distribution_name as 'Distribution Name', "
                   "Online_order_number as 'Online Order #'"
                   ", Tracking_number as 'Tracking Number',"
                   "Distribution_delivery_date as 'Delivery Date', Order_date as 'Order Date', "
                   "Wine_id as 'Wine Id', Amount_ordered as 'Amount Ordered' From distribution")

    Disttb = cursor.fetchall()

    print("\n  -- {} --".format(title))

    for row in Disttb:
        print(f"Distribution ID: {row[0]}")
        print(f"Distribution Name: {row[1]}")
        print(f"Online Order #: {row[2]}")
        print(f"Tracking Number: {row[3]}")
        print(f"Delivery Date: {row[4]}")
        print(f"Order Date: {row[5]}")
        print(f"Wine id: {row[6]}")
        print(f"Amount Ordered: {row[7]}")
        print(" ")


def show_Supp(cursor, title):
    cursor.execute("SELECT Supplier_id as 'Supplier ID', Supplier_name as 'Supplier Name', "
                   "Supplier_inventory as 'Supplier Inventory' ,Component_name as 'Components',"
                   "Supply_order_date as 'Order Date', Supply_delivery_date as 'Delivery Date',"
                   "Expected_delivery_date as 'Expected Delivery Date' FROM supplier")

    Supptb = cursor.fetchall()

    print("\n  -- {} --".format(title))

    for row in Supptb:
        print(f"Supplier ID: {row[0]}")
        print(f"Supplier Name: {row[1]}")
        print(f"Supplier Inventory: {row[2]}")
        print(f"Components: {row[3]}")
        print(f"Order Date: {row[4]}")
        print(f"Delivery Date: {row[5]}")
        print(f"Expected Delivery Date: {row[6]}")
        print(" ")


def show_Win(cursor, title):
    cursor.execute("SELECT Wine_id as 'Wine ID', Wine_name as 'Wine Name',"
                   "Wine_type as 'Type', Distribution_id as 'Dist. ID',"
                   "Supplier_id as 'Supplier ID', Employee_id as 'Employee ID',"
                   "Total_sold as 'Total Sold' FROM winery")

    Wintb = cursor.fetchall()

    print("\n  -- {} --".format(title))

    for row in Wintb:
        print(f"Wine ID: {row[0]}")
        print(f"Wine Name: {row[1]}")
        print(f"Type: {row[2]}")
        print(f"Dist. ID: {row[3]}")
        print(f"Supplier ID: {row[4]}")
        print(f"Employee ID: {row[5]}")
        print(f"Total Sold: {row[6]}")
        print(" ")



show_employee(cursor, "Displaying Employee Table")
show_Dept(cursor, "Displaying Department Table")
show_Dist(cursor, "Displaying Distribution Table")
show_Supp(cursor, "Displaying Supplier Table")
show_Win(cursor, "Displaying Winery Table")