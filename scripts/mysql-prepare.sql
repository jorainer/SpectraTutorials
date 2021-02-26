create database MassBank character set = 'utf8';

create user 'massbank'@'%' identified by 'massbank';
grant select on MassBank.* to 'massbank'@'%';
grant show view on MassBank.* to 'massbank'@'%';
flush privileges;
