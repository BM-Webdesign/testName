// commands to be executed in cypher-shell
create database mondial;
create user mondial set password 'swordfish' change not required set home database mondial;
create role mondial_reader; 
grant role mondial_reader to mondial;
grant match {*} on graph mondial to mondial_reader;