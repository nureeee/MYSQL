import pymysql as my 

con = my.connect(host='127.0.0.1', user='root', password='', db='mydb')
c = con.cursor()

c.execute('insert into movie values("명량", "최민식", 1761)')
c.execute('update movie set actor where actor = "김혜수"')
c.execute('delete from movie where name = "광해"')

c.execute('select * from movie')

res = c.fetchall()

print(res[0])
print(res[0][0], res[0][1], res[0][2])
print(res[1][0], res[1][1], res[1][2])
print(res[2][0], res[2][1], res[2][2])



con.commit()
c.close()

con.close()

