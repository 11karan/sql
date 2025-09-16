use tushar;

create table test (id int primary key, name varchar(20));
insert into test values(10,'abc'),(11,'cvb'),(12,'wsd'),(13,'dfg'),(14,'asd');

expLain select * from test where id = 13;

create index  index_test on  test(name,id);

show indexes from test ;