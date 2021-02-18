from application import Application
from random import randint

class GoldenThoughts(Application):

    def __init__(self):
        super().__init__()
        pass
    
    def getQuoteNumber(self):
        a = 1
        b = super().getParamVal('count_quotes')
        return randint(a,b)

    def selectTeacher(self,name):
        self.name = (name,)
        sql = "select * from tb_ref_teacher where name = ?"        
        self.c.execute(sql,self.name)

    def selectQuote(self):
        self.rowNo = (self.getQuoteNumber(),)
        self.conn.row_factory = lambda cursor, row: row[0:3]
        sql = "SELECT q.ID, q.quote, t.name FROM tb_quotes q INNER JOIN tb_ref_teacher t on q.teacher_id = t.id where q.ID = ?"
        # c = self.conn.cursor()
        x = self.c.execute(sql,self.rowNo).fetchall()
        for a in x:
            return f'"{a[1]}" ~ {a[2]}'

    def addTeacher(self,name):
        self.selectTeacher(name)
        onerow = self.c.fetchone()   
        if onerow is None:
            sql = "insert into tb_ref_teacher(name) values (?)"
            self.c.execute(sql,self.name)
            self.conn.commit()
            '''
            try:
                self.c.execute(sql,self.name)
            except sqlite3.IntegrityError:
                print('blad - juz dodane')
            else:
                print('dodane')'''
        else:
            pass
            # print('juz bylo')
    
    def addQuote(self,name,quote):
        self.addTeacher(name)
        teacher_id = Application.GetRowNo(self,'tb_ref_teacher','name',name)
        sql = "insert into tb_quotes(teacher_id,quote) values (?,?)"
        self.c.execute(sql,(teacher_id,quote))
        self.conn.commit()
        Application.closeConnection(self)
        '''
        try:
            self.c.execute(sql,(teacher_id,quote))
            self.conn.commit()
        except sqlite3.IntegrityError:
            self.conn.close()
            print('nie dodane')
        else:
            self.conn.close()
            print('dodane')'''
        
            


if __name__ == "__main__":
    print(GoldenThoughts().selectQuote())