create table buildings (
name varchar(80) not null,
shortname varchar(10) unique,
id serial primary KEY
);
create table rooms (
number integer,
buildingid integer references buildings(id),
seating integer,
primary key (number, buildingid)
);
insert into rooms (number, buildingid, seating)
values (400, (select id from buildings where name="mary gates hall"), 40);