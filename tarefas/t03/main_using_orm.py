from peewee import *

def main():
    db = PostgresqlDatabase('peewee_db', user='admin', password='admin', host='localhost', port=5432)
    db.connect()

    class Empregado(Model):
        name = CharField()
        salario = FloatField()
        cargo = CharField()

        class Meta:
            database = db

    db.create_tables([Empregado])

    #criando empregados
    emp = Empregado.create(name='João', salario=1000, cargo='Programador')
    emp.save()
    emp2 = Empregado.create(name='Maria', salario=2000, cargo='Gerente')
    emp2.save()
    emp3 = Empregado.create(name='Pedro', salario=3000, cargo='Programador')
    emp3.save()

    #listando empregados
    for empregados in Empregado.select().order_by(Empregado.name):
        print(empregados.name, empregados.salario, empregados.cargo)

if __name__ == '__main__':
    main()
