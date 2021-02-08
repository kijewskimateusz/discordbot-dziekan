from application import Application
from random import randint

class GoldenThoughts(Application):

    def __init__(self):
        super().__init__()
        pass
    
    def getQuoteNumber(self):
        a = 1
        b = super().getMaxRow('licz_cytaty')
        return randint(a,b)

    def selectQuote(self):
        self.rowNo = (self.getQuoteNumber(),)
        self.conn.row_factory = lambda cursor, row: row[0:3]
        sql = "SELECT * FROM _tb_cytaty where ID = ?"
        c = self.conn.cursor()
        x = c.execute(sql,self.rowNo).fetchall()
        for a in x:
            return f'"{a[1]}" ~ {a[2]}'
        
               

#  "get value form table where parameter = "nazwa parametru"
# + stworzyć tabelę która będzie przechowywała takie wartości 
# + stworzyć triggery aktualizujące nam tą tabelę po każdym insercie"
# table = 'SELECT max(ID), nazwa FROM _tb_ref_prowadzacy'


# x = GoldenThoughts()
if __name__ == "__main__":
    print(GoldenThoughts().selectQuote())


'''
    

conn = sqlite3.connect(config.db)
# c = conn.cursor()

    conn.row_factory = lambda cursor, row: row[0]
c = conn.cursor()
ids = c.execute('SELECT max(ID), nazwa FROM _tb_ref_prowadzacy').fetchall()

strings = [str(integer) for integer in ids]
a_string = "".join(strings)
an_integer = int(a_string)
print(an_integer)



sql1 = "select max(ID) from _tb_ref_prowadzacy"
args1 = c.execute(sql1).fetchall()

print(args1)
for row in args1:
    print(row)

sql = "SELECT * FROM _tb_ref_prowadzacy where ID = ? AND Nazwa = ?"
args = ('1','Bogna Zacny')
cursor = c.execute(sql, args)

for row in cursor:
	print(row)
# print(b)

'''