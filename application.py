import sqlite3
import config

class Application():
    
    def __init__(self):
        self.conn = sqlite3.connect(config.db)
        self.c = self.conn.cursor()
        pass

    def selectMultiRow(self,sql,expr):
        self.expr = (expr,)
        self.sql = sql
        queryResult = self.c.execute(self.sql,self.expr).fetchall()
        return queryResult

    def returnFirstRow(self,sql,expr):
        tuple = self.selectMultiRow(sql,expr)
        for x in tuple:
            return x[0]

    def insertToTable(self,sql,*args):
        self.args = args
        self.sql = sql
        try:
            self.c.execute(self.sql,self.args)
            self.conn.commit()
        except sqlite3.IntegrityError:
            pass
            # print('blad - juz dodane')
        else:
            pass
            # print('dodane')

    def closeConnection(self):
        self.conn.close()

if __name__ == "__main__":

    a = sqlite3.connect(config.db)
    b ='tb_ref_teacher'

    x = Application()
    y = 'Test5'
    # print(x.returnFirstRow("SELECT q.ID, q.quote, t.name FROM tb_quotes q INNER JOIN tb_ref_teacher t on q.teacher_id = t.id where q.ID = ?","4"))
    # print(x.returnFirstRow('select * from tb_ref_teacher where name = ?','Test5'))
    x.insertToTable("insert into tb_ref_teacher(name) values (?)","Test12")