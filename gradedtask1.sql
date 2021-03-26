show databases;
create database HRS;
use HRS;
create table  Payment(PID int primary key, date_ varchar(50), type_ varchar(50), tot_amount double, NetAmount double);
create table Room(RID int primary key, status varchar(50), charge double, type_ varchar(50));
create table Reservation(ReID int primary key, Rtype varchar(50), No_of_Nights int, reg_date varchar(50), no_of_rooms int, RID int,foreign key(RID) references Room(RID)); 
create table Guest(GID int primary key, NIC varchar(25), Gender varchar(5), _Name varchar(50), country varchar(50), address varchar(50));
create table Invoice(net_amount double, vat double,tax double,total double,date_ varchar(10),InvoiceID int primary key, PID int, foreign key(PID) references Payment(PID), GID int, foreign key(GID) references Guest(GID));



desc Invoice;
desc Guest;
desc Reservation;
desc Room;
desc Payment;