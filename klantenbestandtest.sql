CREATE schema clientDBTest;

CREATE TABLE clientDBTest.postal_code (
postal_code int(4) unsigned primary key,
city varchar(100) not null
);
    
CREATE TABLE clientDBTest.client_person (
client_number int auto_increment primary key,
name varchar(50) not null,
first_name varchar(50) not null
);

CREATE TABLE clientDBTest.client_firm(
client_number int auto_increment primary key,
tax_id varchar(10) not null,
name varchar(50) not null,
field varchar(100)
);

CREATE TABLE clientDBTest.address (
id int unsigned auto_increment primary key,
type varchar(50),
street varchar(50) not null, 
number int not null,
box int,
postal_code int,
client_person int,
client_firm int
);

insert into clientDBTest.postal_code(postal_code,city) values(1000,'Brussel');
insert into clientDBTest.postal_code(postal_code,city) values(9000,'Gent');
insert into clientDBTest.postal_code(postal_code,city) values(9620,'Zottegem');
insert into clientDBTest.postal_code(postal_code,city) values(9550,'Herzele');

insert into clientDBTest.client_firm(tax_id,name,field) values('2211331320','Realdolmen','ICT');
insert into clientDBTest.client_firm(tax_id,name,field) values('2211331440','Orange','TELECOM');
insert into clientDBTest.client_firm(tax_id,name,field) values('2211338320','Proximus','TELECOM');
insert into clientDBTest.client_firm(tax_id,name,field) values('2211331620','TECHDATA','ICT');

insert into clientDBTest.client_person(name,first_name) values('De Cock','Steven');
insert into clientDBTest.client_person(name,first_name) values('De Cock','Steven');
insert into clientDBTest.client_person(name,first_name) values('De Cock','Steven');
insert into clientDBTest.client_person(name,first_name) values('De Cock','Steven');

INSERT INTO postal_code(postal_code,city) values (8000,'A New City');
delete from postal_code where postal_code = 8000;






