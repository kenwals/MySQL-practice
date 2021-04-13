import os
import pymysql

# Get username from Cloud9 workspace
# (modify this variable if running on another environment)
username = os.getenv('C9_USER')

# Connect to the database
connection = pymysql.connect(host='localhost',
                             user=username,
                             password='',
                             db='Chinook')

try:    # here executemany alows more then one row to be added
    with connection.cursor() as cursor:
        cursor.execute("UPDATE Friends SET age = %s WHERE name = %s ;",
                        (23, 'Bob'))
        connection.commit()
finally:
    # Close the connection, regardless of whether or not the above was successful
    connection.close()
    