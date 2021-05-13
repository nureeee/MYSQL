import sqlite3 as s

con = s.connect('c:\\dd\\mydb')
c = con.cursor()

c.execute('drop table if exists Man')
c.execute('create table Man(name, age)' )
c.execute('insert into Man values("김연아", 32)')
c.execute('insert into Man values("손흥민", 30)')
c.execute('select * from movie order by audience desc')




con.commit()
c.close()
con.close()