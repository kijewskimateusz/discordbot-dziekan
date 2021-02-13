from application import Application
from random import randint

class GoldenThoughts(Application):

    def __init__(self):
        super().__init__()
        pass
    
    def getQuoteNumber(self):
        a = 1
        b = super().getMaxRow('count_quotes')
        return randint(a,b)

    def selectQuote(self):
        self.rowNo = (self.getQuoteNumber(),)
        self.conn.row_factory = lambda cursor, row: row[0:3]
        sql = "SELECT q.ID, q.quote, t.name FROM tb_quotes q INNER JOIN tb_ref_teacher t on q.teacher_id = t.id where q.ID = ?"
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