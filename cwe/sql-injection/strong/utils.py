import pymysql.cursors  

def get_connection():
    # You can change the connection arguments.
    connection = pymysql.connect(
        host='db',
        user='root',
        password='root',                             
        db='twitter',
        cursorclass=pymysql.cursors.DictCursor
    )

    return connection
