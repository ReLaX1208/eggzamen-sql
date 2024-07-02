CREATE TABLE FAMILY_MEMBERS(
	ID INT IDENTITY PRIMARY KEY,
	[STATUS] NVARCHAR(100),
	MEMBER_NAME NVARCHAR(100),
	BIRTH_DAY DATETIME
)
CREATE TABLE GOOD_TYPES(
	ID INT IDENTITY PRIMARY KEY,
	GOOD_TYPE_NAME NVARCHAR(100)
)
CREATE TABLE GOODS(
	ID INT IDENTITY PRIMARY KEY,
	GOOD_NAME NVARCHAR(100),
	[TYPE_ID] INT REFERENCES GOOD_TYPES(ID)
)
CREATE TABLE PAYMENTS(
	ID INT IDENTITY PRIMARY KEY,
	FAMILY_MEMBER_ID INT REFERENCES FAMILY_MEMBERS(ID),
	GOOD_ID INT REFERENCES GOODS(ID),
	amount int,
	buy_date date
)
insert into FAMILY_MEMBERS ([STATUS], MEMBER_NAME, BIRTH_DAY) values ('Mother', 'Allys Tong', '2002-09-05');
insert into FAMILY_MEMBERS ([STATUS], MEMBER_NAME, BIRTH_DAY) values ('Brother', 'Alfons Boffey', '2022-12-02');
insert into FAMILY_MEMBERS ([STATUS], MEMBER_NAME, BIRTH_DAY) values ('Sister', 'Chloe Wyse', '2013-06-27');
insert into FAMILY_MEMBERS ([STATUS], MEMBER_NAME, BIRTH_DAY) values ('Aunt', 'Maryanne Iacopini', '2001-03-25');
insert into FAMILY_MEMBERS ([STATUS], MEMBER_NAME, BIRTH_DAY) values ('Humster', 'Dorelle O''Scannill', '2023-04-16');
insert into FAMILY_MEMBERS ([STATUS], MEMBER_NAME, BIRTH_DAY) values ('Cat', 'Cory Spain', '2021-10-12');
insert into FAMILY_MEMBERS ([STATUS], MEMBER_NAME, BIRTH_DAY) values ('Dog', 'Estelle Thurske', '2018-07-08');
insert into FAMILY_MEMBERS ([STATUS], MEMBER_NAME, BIRTH_DAY) values ('Father', 'Marlo Dell', '1999-09-01');
insert into FAMILY_MEMBERS ([STATUS], MEMBER_NAME, BIRTH_DAY) values ('Grandfather', 'Griswold Feechum', '2006-11-01');
insert into FAMILY_MEMBERS ([STATUS], MEMBER_NAME, BIRTH_DAY) values ('Grandmother', 'Hyacinthe Rosenauer', '2004-09-23');

insert into GOOD_TYPES (GOOD_TYPE_NAME) values ('Wine - Placido Pinot Grigo');
insert into GOOD_TYPES (GOOD_TYPE_NAME) values ('Cheese - Cream Cheese');
insert into GOOD_TYPES (GOOD_TYPE_NAME) values ('Pork - Side Ribs');
insert into GOOD_TYPES (GOOD_TYPE_NAME) values ('Scallop - St. Jaques');
insert into GOOD_TYPES (GOOD_TYPE_NAME) values ('Juice - Apple, 500 Ml');
insert into GOOD_TYPES (GOOD_TYPE_NAME) values ('Lid Tray - 16in Dome');
insert into GOOD_TYPES (GOOD_TYPE_NAME) values ('Pepper - Black, Crushed');
insert into GOOD_TYPES (GOOD_TYPE_NAME) values ('Cumin - Whole');
insert into GOOD_TYPES (GOOD_TYPE_NAME) values ('Beef Flat Iron Steak');
insert into GOOD_TYPES (GOOD_TYPE_NAME) values ('Cookies - Englishbay Wht');

insert into GOODS (GOOD_NAME, [TYPE_ID]) values ('Wine - Barbera Alba Doc 2001', 8);
insert into GOODS (GOOD_NAME, [TYPE_ID]) values ('Veal - Tenderloin, Untrimmed', 9);
insert into GOODS (GOOD_NAME, [TYPE_ID]) values ('Tomatillo', 8);
insert into GOODS (GOOD_NAME, [TYPE_ID]) values ('Nut - Macadamia', 2);
insert into GOODS (GOOD_NAME, [TYPE_ID]) values ('Aspic - Clear', 2);
insert into GOODS (GOOD_NAME, [TYPE_ID]) values ('Bamboo Shoots - Sliced', 7);
insert into GOODS (GOOD_NAME, [TYPE_ID]) values ('Tomato - Green', 10);
insert into GOODS (GOOD_NAME, [TYPE_ID]) values ('Mayonnaise', 5);
insert into GOODS (GOOD_NAME, [TYPE_ID]) values ('Milkettes - 2%', 3);
insert into GOODS (GOOD_NAME, [TYPE_ID]) values ('Wine - Alsace Riesling Reserve', 4);


insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (8, 9, 96556, '2023-07-17');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (5, 4, 69334, '2023-09-27');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (4, 5, 65833, '2024-01-04');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (1, 4, 57880, '2023-09-30');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (10, 1, 57868, '2024-03-14');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (3, 7, 29828, '2023-11-27');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (1, 6, 66963, '2023-11-04');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (8, 4, 77769, '2024-04-20');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (9, 9, 5891, '2023-10-26');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (5, 10, 57030, '2023-08-04');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (3, 8, 63427, '2023-11-20');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (10, 7, 55818, '2024-03-10');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (4, 5, 14229, '2024-05-14');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (7, 1, 66850, '2024-02-19');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (9, 8, 52332, '2023-11-27');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (3, 7, 60251, '2024-01-24');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (10, 10, 40755, '2023-08-01');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (8, 6, 52304, '2024-04-13');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (3, 3, 88399, '2024-05-02');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (7, 3, 77556, '2023-09-27');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (8, 1, 33109, '2023-10-23');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (8, 7, 54977, '2024-01-28');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (5, 10, 94089, '2023-08-31');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (4, 7, 85771, '2024-03-17');
insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (2, 5, 120000, '2024-01-11');

select * from FAMILY_MEMBERS, GOOD_TYPES, GOODS, PAYMENTS

create view poppo
as 
select GOOD_ID, FAMILY_MEMBER_ID, amount from PAYMENTS 

select * from poppo

create proc popa
(@TovName nvarchar(100))
as 
begin
declare @producttype nvarchar(100)
set @producttype = (select g.TYPE_ID
from GOODS as g
where g.GOOD_NAME = @TovName)
select * from GOODS where TYPE_ID = @producttype
end
exec popa @TovName = 'Tomatillo'

create proc popopopopopopopopopopopopoop
(@Memb_name nvarchar(100),
@start_date datetime,
@end_date datetime)
as begin select p.amount from PAYMENTS as p join FAMILY_MEMBERS as fm on fm.id = p.FAMILY_MEMBER_ID where p.buy_date between @start_date and @end_date and fm.MEMBER_NAME like @Memb_name
end
exec popopopopopopopopopopopopoop 'Alfons Boffey', '2023-01-01', '2024-12-01'

alter trigger popapa
on FAMILY_MEMBERS
after insert
as
declare 
@a nvarchar(100) = (select (upper(substring(MEMBER_NAME, 1,1))) from inserted),
@b nvarchar(100) = (select (SUBSTRING(MEMBER_NAME, 2, len(MEMBER_NAME)-2)) from inserted),
@c nvarchar(100) = (select (upper(substring(MEMBER_NAME, len(MEMBER_NAME),1))) from inserted)
select @a+@b+@c
update FAMILY_MEMBERS
set MEMBER_NAME = @a+@b+@c where id = (select id from inserted)


insert into FAMILY_MEMBERS([STATUS], MEMBER_NAME, BIRTH_DAY) values ('Grandmother', 'sadasda asdasd', '2004-09-23');



alter trigger popopopo
ON PAYMENTS
instead of insert
AS
declare @s int = (select sum(amount) from PAYMENTS where FAMILY_MEMBER_ID = (select FAMILY_MEMBER_ID from inserted)
	select @s
	if
	@s>100000
begin
	select 'no'
END
else 
begin
	insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date)
	select FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date from inserted
	end

	insert into PAYMENTS (FAMILY_MEMBER_ID, GOOD_ID, amount, buy_date) values (2, 5, 130000, '2024-01-12');
	select * from PAYMENTS
