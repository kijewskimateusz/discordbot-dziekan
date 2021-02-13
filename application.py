import sqlite3
import config

class Application():
    
    def __init__(self):
        self.conn = sqlite3.connect(config.db)
        pass

    def getMaxRow(self,case):
        self.conn.row_factory = lambda cursor, row: row[0]
        sql = "SELECT value_numeric FROM tb_ref_parameter where param = ?"
        self.case = (case,)
        c = self.conn.cursor()
        ids = c.execute(sql,self.case).fetchall()
        num = self.convertListToInt(ids)
        return num 
    
    def convertListToInt(self,list):
        self.list = list
        strings = [str(integer) for integer in self.list]
        a_string = "".join(strings)
        an_integer = int(a_string)
        return an_integer

# a = sqlite3.connect(config.db)


if __name__ == "__main__":

    a = sqlite3.connect(config.db)
    b ='tb_ref_teacher'

    x = Application()
    print(x.getMaxRow('count_quotes'))

    # dodaj
    # wywolaj
    # usun