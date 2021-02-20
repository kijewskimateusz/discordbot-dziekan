from application import Application
from random import randint

class GoldenThoughts(Application):

    def __init__(self):
        super().__init__()
        # self.sql = ""
        pass
    
    def getQuoteNumber(self):
        sql = "select value_numeric from tb_ref_parameter where param = ?"
        a = 1
        b = super().returnFirstRow(sql,'count_quotes')
        return randint(a,b)

    def printQuote(self):
        sql = "SELECT q.ID, q.quote, t.name FROM tb_quotes q INNER JOIN tb_ref_teacher t on q.teacher_id = t.id where q.ID = ?"
        rowNo = self.getQuoteNumber()
        queryresult = super().selectMultiRow(sql,rowNo)
        for i in queryresult:
            return f'"{i[1]}" ~ {i[2]}'

    def addQuote(self,teacherName,Quote):
        sql = "insert into tb_ref_teacher(name) values (?)"
        super().insertToTable(sql,teacherName)
        sql = 'select id from tb_ref_teacher where name = ?'
        teacherId =  super().returnFirstRow(sql,teacherName)
        sql = "insert into tb_quotes(teacher_id,quote) values (?,?)"
        super().insertToTable(sql,teacherId,Quote)
    


if __name__ == "__main__":
    print(GoldenThoughts().printQuote())
    # GoldenThoughts().addQuote('Ambroży','Przełoży!!')