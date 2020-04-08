create schema shravani;
create database event_mgmt_db;
use event_mgmt_db;
create table event_management(event_id int(10) NOT NULL,eventName varchar(30),
contact_number varchar(20),event_location varchar(30),
event_Unit varchar(20),
event_title varchar(30),eventDate date,amount double(7,2),primary key(event_id));
select * from event_management;