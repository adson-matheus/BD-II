import psycopg2
from decouple import config

def connect():
    """ Connect to the PostgreSQL database server """
    try:
        conexao = psycopg2.connect(
            host=config('HOST'),
            database=config('DATABASE'),
            user=config('USER'),
            password=config('PASSWORD'),
            port=config('PORT'),
        )
        cursor = conexao.cursor()

        # Execute a query
        cursor.execute("SELECT * FROM empregado")

        # Retrieve query results
        linhas = cursor.fetchall()
        for linha in linhas:
            print(linha)

        cursor.close()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        if conexao is not None:
            conexao.close()
            print('Database connection closed.')

if __name__ == '__main__':
    connect()