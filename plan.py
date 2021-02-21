from application import Application
from datetime import date

class ClassSchedule(Application):

    def __init__(self):
        super().__init__()
        self.today = date.today()
        # self.sql = ""
        pass
    
    # return closest day to today when we have classes
    def returnClosestClassesDay(self):
        sql = "SELECT date(start) FROM tb_classes WHERE date(start) = ( SELECT MIN (date(start)) FROM tb_classes WHERE start >= ? )"
        return super().returnFirstRow(sql,self.today)

    # return all attributes of this date
    def returnMatchingClasses(self):
        sql =   """select time(cl.start), su.name, me.url 
                    from tb_classes cl
                    join tb_ref_subject su on su.id = cl.subject_id
                    join tb_ref_class_type sp on sp.id = cl.class_type_id
                    join tb_ref_meeting me on me.class_id = cl.class_type_id and me.subject_id = cl.subject_id 
                    where date(start) = ?;"""
        date = self.returnClosestClassesDay()
        return super().selectMultiRow(sql,date)
        # return queryresult:
            # print(i) 

    # format this as text
    def printClassesMessage(self):
        rawText = self.returnMatchingClasses()
        delta = super().convertToDate(self.returnClosestClassesDay()) - self.today
        deltaStr = str(delta.days)
        # messageBody = ''
        
        if deltaStr == '0':
            messageBody = f'Najbliższy zjazd opdbywa się dzisiaj, harmonogram zajęć:\n'
            for i in rawText:
                messageBody += f' - Zajęcia z przedmiotu **"{i[1]}"** zaczynają się o godzinie {i[0]}, link do spotkania: {i[2]}\n'
            
        elif deltaStr == '1':
            messageBody = f'Najbliższy zjazd odbywa się jutro, harmonogram zajęć:\n'
            for i in rawText:
                messageBody += f' - Zajęcia z przedmiotu **"{i[1]}"** zaczynają się o godzinie {i[0]}, link do spotkania: {i[2]}\n'
            
        else:
            messageBody = f'Najbliższy zjazd odbywa się za {deltaStr} dni, harmonogram zajęć:\n'
            for i in rawText:
                messageBody += f' - Zajęcia z przedmiotu **"{i[1]}"** zaczynają się o godzinie {i[0]}, link do spotkania: {i[2]}\n'
            
        messageBody += f'Powodzenia! 🤞'
        return messageBody

if __name__ == '__main__':
    x = ClassSchedule()
    print(x.printClassesMessage())