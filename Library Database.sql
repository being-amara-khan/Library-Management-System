Create Database Project
Use Project

create table Logins
(login_ID int not null primary key,
login_role_ID varchar(25),
login_username varchar(25),
login_password varchar(25),
login_signup varchar(25),
login_forgotpassword int );

insert into Logins values(01,'R01','Ali','AS123','ali@gmail.com',012)
insert into Logins values(02,'R02','Ahmed','AD124','ahmed@gmail.com',015)
insert into Logins values(03,'R03','Asad','AQ122','asad@gmail.com',019)
insert into Logins values(04,'R04','Waqas','AZ231','waqas@gmail.com',018)
insert into Logins values(05,'R05','Ahsan','AT321','ahsan@gmail.com',071)
insert into Logins values(06,'R06','Eman','AJ345','Eman@gmail.com',064)
insert into Logins values(07,'R07','Anas','AG781','anas@gmail.com',082)
insert into Logins values(08,'R08','Raza','AE267','raza@gmail.com',074)
insert into Logins values(09,'R09','Zain','Az512','zain@gmail.com',028)
insert into Logins values(10,'R10','hzaifa','AN388','huzaifa@gmail.com',046)
insert into Logins values(11,'R11','Adel','AM355','adel@gmail.com',064)
insert into Logins values(12,'R12','Emad','AO342','emad@gmail.com',046)
insert into Logins values(13,'R13','hassan','AP783','hassan@gmail.com',076)
insert into Logins values(14,'R14','Saqib','AQ123','saqib@gmail.com',067)
insert into Logins values(15,'R15','Abdullah','AY565','abdullah@gmail.com',098)
insert into Logins values(16,'R16','Ambar','AU656','aambar@gmail.com',089)
insert into Logins values(17,'R17','Tahir','AN533','tahirgmail.com',090)
insert into Logins values(18,'R18','Shakir','AY900','shakir@gmail.com',034)
insert into Logins values(19,'R19','AbuBakkar','AT566','abubakkar@gmail.com',014)
insert into Logins values(20,'R20','Fahad','AX433','fahad@gmail.com',041)
insert into Logins values(21,'R21','Ali','AS123','ali@gmail.com',012)
insert into Logins values(22,'R22','Ahmed','AD124','ahmed@gmail.com',015)
insert into Logins values(23,'R23','Asad','AQ122','asad@gmail.com',019)
insert into Logins values(24,'R24','Waqas','AZ231','waqas@gmail.com',018)
insert into Logins values(25,'R25','Ahsan','AT321','ahsan@gmail.com',071)
insert into Logins values(26,'R26','Eman','AJ345','Eman@gmail.com',064)
insert into Logins values(27,'R27','Anas','AG781','anas@gmail.com',082)
insert into Logins values(28,'R28','Raza','AE267','raza@gmail.com',074)
insert into Logins values(29,'R29','Zain','Az512','zain@gmail.com',028)
insert into Logins values(30,'R30','hzaifa','AN388','huzaifa@gmail.com',046)



----------------------------------------------------------------------------------------------- Queries On Login Table (35 Queries) --

----------------------------AND-------------------------------------
select *from Logins
where login_username = 'Ali' and login_forgotpassword = 012 ;
select *from Logins
where login_username = 'Ahmed' and login_forgotpassword = 015 ;
----------------------------OR-------------------------------------
select *from Logins
where login_username = 'Waqas' or login_forgotpassword = 018 ;
select *from Logins
where login_username = 'Anas' or login_forgotpassword = 074 ;
----------------------------NOT-------------------------------------
select *from Logins
where not login_username = 'Zain' ;
select *from Logins
where not login_username = 'Saqib' ;
----------------------------LIKE-------------------------------------
select *from Logins
where login_username like 'A%' ;
select *from Logins
where login_username like 'S%' ;
----------------------------IN-------------------------------------
select *from Logins
where login_username In ('Zain','Eman','Tahir' ) ;
select *from Logins
where login_signup In ('asad@gmail.com','ahsan@gmail.com','raza@gmail.com' ) ;
----------------------------BETWEEN-------------------------------------

select *from Logins where login_forgotpassword between 10 And 50 ;
select *from Logins where login_forgotpassword between 30 And 60 ;

-----------------------COUNT--------------------------
SELECT COUNT (login_forgotpassword)login_forgotpassword
FROM Logins;
-----------------------AVERAGE--------------------------
SELECT AVG (login_forgotpassword)login_forgotpassword
FROM Logins;
-----------------------SUM--------------------------
SELECT SUM (login_forgotpassword)login_forgotpassword
FROM Logins;
-----------------------MIN--------------------------
SELECT MIN (login_forgotpassword)login_forgotpassword
FROM Logins;
-----------------------MAX--------------------------
SELECT MAX (login_forgotpassword)login_forgotpassword FROM Logins;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------
SELECT  AVG(login_forgotpassword)login_forgotpassword,COUNT(login_forgotpassword)login_forgotpassword
,SUM(login_forgotpassword)login_forgotpassword
FROM Logins
where login_ID > 5
GROUP BY login_forgotpassword
ORDER BY AVG(login_forgotpassword)asc,COUNT(login_forgotpassword),SUM(login_forgotpassword)DESC;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------
SELECT  AVG(login_ID)login_ID,COUNT(login_ID)login_ID
,SUM(login_ID)login_ID
FROM Logins
where login_ID > 5
GROUP BY login_ID
ORDER BY AVG(login_ID)asc,COUNT(login_ID),SUM(login_ID)DESC;

------------------------Inner Join-----------------------------

SELECT Logins.login_ID, Admins.Admin_Username
FROM Logins
INNER JOIN Admins ON Logins.login_ID = Admins.Admin_ID;

SELECT Logins.login_forgotpassword, Admins.Admin_Location
FROM Logins
INNER JOIN Admins ON Logins.login_forgotpassword = Admins.Admin_ID;

------------------------Left Join-----------------------------

SELECT Admins.Admin_Username, Logins.login_ID
FROM Admins
LEFT JOIN Logins ON Logins.login_ID = Admins.Admin_ID;

SELECT Admins.Admin_Password, Logins.login_password
FROM Admins
LEFT JOIN Logins ON Logins.login_ID = Admins.Admin_ID;
------------------------Right Join-----------------------------

SELECT Logins.login_ID, Admins.Admin_Password, Admins.Admin_Username
FROM Logins
RIGHT JOIN Admins ON Logins.login_ID = Admins.Admin_ID;

SELECT Logins.login_password, Admins.Admin_Code, Admins.Admin_Email
FROM Logins
RIGHT JOIN Admins ON Logins.login_ID = Admins.Admin_ID;
------------------------Full Join-----------------------------

SELECT Admins.Admin_Username, Logins.login_ID
FROM Admins
CROSS JOIN Logins;

SELECT Admins.Admin_Password, Logins.login_ID
FROM Admins
cross JOIN Logins;
----------Joins using where clause + order by, group by statement----------

SELECT Logins.login_username,COUNT(Admins.Admin_ID) AS Admin_Location FROM Admins
LEFT JOIN Logins ON Admins.Admin_ID = Logins.login_ID
where Admin_ID > 25 
GROUP BY login_username
ORDER BY (login_username);

SELECT Logins.login_signup,COUNT(Admins.Admin_ID) AS Admin_Location FROM Admins
LEFT JOIN Logins ON Admins.Admin_ID = Logins.login_ID
where Admin_ID > 25 
GROUP BY login_signup
ORDER BY (login_signup);

SELECT Logins.login_password,COUNT(Admins.Admin_ID) AS Admin_Location FROM Admins
LEFT JOIN Logins ON Admins.Admin_ID = Logins.login_ID
where Admin_ID > 25 
GROUP BY login_password
ORDER BY (login_password);

SELECT Logins.login_role_ID,COUNT(Admins.Admin_ID) AS Admin_Location FROM Admins
LEFT JOIN Logins ON Admins.Admin_ID = Logins.login_ID
where Admin_ID > 25 
GROUP BY login_role_ID
ORDER BY (login_role_ID);

--------------------------- Audit Table For Record --------------------------------

create table E_MallAudt(Id int primary key identity(1,1), Message Text);
select * from E_MallAudt;

--------------------------- Triger For Insert --------------------------------

create trigger trinsert_logins
ON Logins 
FOR INSERT 
AS 
BEGIN 
Declare @Id int 
Select @Id = login_ID  from Inserted 
Insert into E_MallAudt values ('New user with id = ' + CAST(@Id as nvarchar(5)) + ' is added at ' + CAST(GETDATE() as nvarchar(20)))
END

insert into Logins values(31,'A31','Anas','SA152','anassheik890@gmail.com',123);

select * from E_MallAudt;

--------------------------- Triger For Delete -------------------------------------

create trigger trdelete_logins 
ON Logins
FOR delete
AS 
BEGIN 
Declare @Id int 
Select @Id = login_ID  from deleted
Declare @login_password varchar(40) 
Select @login_password  = login_password  from deleted
Insert into E_MallAudt values ('New site available with id = ' + CAST(@Id as nvarchar(5)) + ' app name = ' + @login_password + ' is deleted at ' + CAST(GETDATE() as nvarchar(20)))
END

delete from Logins where login_ID = 05;

select * from E_MallAudt;

--------------------------- Triger For Update -------------------------------------

create trigger trupdate_logins
ON Logins 
FOR update 
AS 
BEGIN 
Declare @Id int 
Declare @username varchar(25)
Select @Id = login_ID  from deleted
Select @username = login_username from deleted 
Insert into E_MallAudt values ('User Deleted with id = ' + CAST(@Id as nvarchar(5)) + ' and Username = ' + @username + ' is deleted at ' + CAST(GETDATE() as nvarchar(20)))

Select @Id = login_ID  from inserted
Select @username = login_username from inserted
Insert into E_MallAudt values ('New User Add with id = ' + CAST(@Id as nvarchar(5)) + ' and Username = ' + @username + ' is Added at ' + CAST(GETDATE() as nvarchar(20)))
END

update Logins
set login_ID = 25,
login_role_ID = 'R25',
login_username = 'Qasim',
login_password = 'QS555',
login_signup = 'qasim555@gmail.com',
login_forgotpassword = 87  where login_ID = 25;

select * from E_MallAudt;

---------------------------- Procedure for Insert -------------------------------------

Create Procedure spinsert_logins
@login_ID int,
@login_role_ID varchar(25),
@login_username varchar(25),
@login_password varchar(25),
@login_signup varchar(25),
@login_forgotpassword int
as
Begin  
insert into Logins values(@login_ID, @login_role_ID, @login_username, @login_password, @login_signup, @login_forgotpassword)
End

Execute spinsert_logins  31,'R31','Hania','AN399','hania65@gmail.com',039;

Select * from Logins;

---------------------------- Procedure for Delete -------------------------------------

Create Procedure spdelete_logins
@login_ID int
as
Begin  
delete from Logins where login_ID = @login_ID ;
End

Execute spdelete_logins 29;

Select * from Logins;

---------------------------- Procedure for Update -------------------------------------

Create Procedure spupdate_logins
@login_ID int,
@login_role_ID varchar(25),
@login_username varchar(25),
@login_password varchar(25),
@login_signup varchar(25),
@login_forgotpassword int
as
Begin  
update Logins 
Set login_ID = @login_ID, 
login_role_ID = @login_role_ID,
login_username = @login_username,
login_password = @login_password,
login_signup = @login_signup, 
login_forgotpassword = @login_forgotpassword
where login_ID = @login_ID
End

Execute spupdate_logins  28,'R28','Nadeem','NM380','nadeem8797@gmail.com',094;

Select * from Logins;

---------------------------- Exception Handling -------------------------------------

create proc insertlogin_exceptioncheck
@login_ID int,
@login_role_ID varchar(25),
@login_username varchar(25),
@login_password varchar(25),
@login_signup varchar(25),
@login_forgotpassword int
AS 
begin

Begin Try
BEGIN TRANSACTION
Insert into Logins values (@login_ID, @login_role_ID, @login_username, @login_password, @login_signup, @login_forgotpassword);
Commit TRANSACTION -- Permanent data save
Print 'The Transaction Us Successfully Done!';
End Try

Begin Catch
Rollback TRANSACTION
Print 'Sorry The Transaction Is Failed';
Select ERROR_MESSAGE() as [Error Message]
End Catch
end

Execute insertlogin_exceptioncheck  32,'R31','Hania','AN399','hania65@gmail.com',037;

Select * from Logins;

---------------------------- Transaction Control -------------------------------------
-------------------------To check if product is available ----------------------------
create trigger buyproduct 
on Carts for insert
as
declare @cart_ID int
declare @inventory_amount int
declare @Products varchar(25)
declare @product_price varchar(25)  
declare @discount_coupon varchar(25)

declare @product_ID int
declare @product_availability varchar(25)

select @product_ID = product_ID from inserted 
select @product_availability = product_availability from Products 

	where @product_ID = product_ID
begin
if(@product_availability = 'Yes')
		begin
			if(@product_availability != 'Yes')
				begin
					print 'This product is not availabe to add to Cart. '
				end
			else
				begin
					insert into Carts values(@cart_ID, @inventory_amount, @Products, @product_price, @discount_coupon, @product_ID )

					print 'Product Successfully Added to Cart at ' + CAST(GETDATE() as nvarchar(20) ) ;
				end
		end
end


--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------


create table Admins
(Admin_ID int not null primary key,
Admin_Username varchar(100),
Admin_Password varchar(100),
Admin_Location  varchar(100),
Admin_Code  varchar(100),  
Admin_Email  varchar(100),
login_ID int foreign key references Logins(login_ID) On Delete Set NULL );

insert into Admins values(01,'Ali','AS123','DHA Phase_1 lhr','A1','ali@gmail.com',01)
insert into Admins values(02,'Ahmed','AD124','DHA phase_2 lhr','A23','ahmed@gmail.com',02)
insert into Admins values(03,'Asad','AQ122','DHA phase_3 lhr','A3','asad@gmail.com',03)
insert into Admins values(04,'Waqas','AZ231','DHA phase_4 lhr','A4','waqas@gmail.com',04)
insert into Admins values(05,'Ahsan','AT321','DHA phase_5 lhr','A6','ahsan@gmail.com',05)
insert into Admins values(06,'Eman','AJ345','DHA phase_6 lhr','A7','Eman@gmail.com',06)
insert into Admins values(07,'Anas','AG781','DHA phase_7 lhr','A8','anas@gmail.com',07)
insert into Admins values(08,'Raza','AE267','DHA phase_8 lhr','A9','raza@gmail.com',08)
insert into Admins values(09,'Zain','Az512','Gulberg lhr','A10','zain@gmail.com',09)
insert into Admins values(10,'hzaifa','AX433','Gulsshan Prk lhr','A11','huzaifa@gmail.com',10)
insert into Admins values(11,'Adel','AM355','Fateh Ghar Lhr','A12','adel@gmail.com',11)
insert into Admins values(12,'Emad','AO342','Daroghawala lhr ','A12','emad@gmail.com',12)
insert into Admins values(13,'hassan','AX433','Shalimar Housing lhr','A14','hassan@gmail.com',13)
insert into Admins values(14,'Saqib','AQ123','Mehar fiaz colony lhr','A15','saqib@gmail.com',14)
insert into Admins values(15,'Abdullah','AY565','Canal Bank road','A16','abdullah@gmail.com',15)
insert into Admins values(16,'Ambar','AX433','Link road lhr','A17','aambar@gmail.com',16)
insert into Admins values(17,'Tahir','AN533','Shimla pahari lhr','A18','tahirgmail.com',17)
insert into Admins values(18,'Shakir','AY900','Shalmi lhr','A19','shakir@gmail.com',18)
insert into Admins values(19,'AbuBakkar','AT566','Johar Town lhr','A20','abubakkar@gmail.com',19)
insert into Admins values(20,'Fahad','AX433','Behria Town lhr','A21','fahad@gmail.com',20)
insert into Admins values(21,'Ali','AS128','Walton lhr','A1','ali@gmail.com',21)
insert into Admins values(22,'Ahmed','AD124','Zatoon Colony lhr','A23','ahmed@gmail.com',22)
insert into Admins values(23,'Asad','AQ122','Herbanspura lhr','A24','asad@gmail.com',23)
insert into Admins values(24,'Waqas','AZ231','Hafeez Garden','A25','waqas@gmail.com',24)
insert into Admins values(25,'Ahsan','AT321','Rizwan Garden lhr ','A26','ahsan@gmail.com',25)
insert into Admins values(26,'Eman','AJ345','Ghos Garden lhr','A27','Eman@gmail.com',26)
insert into Admins values(27,'Anas','AG781','Manawan lhr','A27','anas@gmail.com',27)
insert into Admins values(28,'Raza','AE267','Islam Park lhr','A28','raza@gmail.com',28)
insert into Admins values(29,'Zain','Az512','Anarkali lhr','A29','zain@gmail.com',29)
insert into Admins values(30,'hzaifa','AN388','Shalamar bagh lhr','A30','huzaifa@gmail.com',30)

---------------------------- Procedure for Insert -------------------------------------
drop procedure spinsert_admins

Create Procedure spinsert_admins
(@Admin_ID int,
@Admin_Username varchar(100),
@Admin_Password varchar(100),
@Admin_Location  varchar(100),
@Admin_Code  varchar(100),
@Admin_Email  varchar(100),
@login_ID int)
as Begin
insert into Admins values(@Admin_ID, @Admin_Username, @Admin_Password, @Admin_Location, @Admin_Code, @Admin_Email, @login_ID)
End

Execute spinsert_admins 29,'Hania','HN772','Model Town','A29','hania27@gmail.com',29;

Select * from Admins;

---------------------------- Procedure for Delete -------------------------------------

Create Procedure spdelete_admins
@Admin_ID int
as
Begin
delete from Admins where Admin_ID = @Admin_ID ;
End

Execute spdelete_Admins 27;

Select * from Admins;

---------------------------- Procedure for Update -------------------------------------

Create Procedure spupdate_admins
(@Admin_ID int,
@Admin_Username varchar(100),
@Admin_Password varchar(100),
@Admin_Location  varchar(100),
@Admin_Code  varchar(100),
@Admin_Email  varchar(100),
@login_ID int)
as
Begin  
update Admins 
Set Admin_ID = @Admin_ID, 
Admin_Username = @Admin_Username,
Admin_Password = @Admin_Password,
Admin_Location = @Admin_Location,
Admin_Code = @Admin_Code, 
Admin_Email = @Admin_Email,
login_ID = @login_ID
where Admin_ID = @Admin_ID
End

Execute spupdate_admins  26,'Nadeem','NM262','Garden Town','A26','nadeem8797@gmail.com',26;

Select * from Admins;

----------------------------------------------------------------------------------------------- Queries On Admin Table (35 Queries) --

----------------------------AND-------------------------------------
select * from Admins
where Admin_Username = 'Ali' and Admin_Code = 'A1' ;
select * from Admins
where Admin_Username = 'Ahmed' and Admin_Code = 'A23' ;
----------------------------OR-------------------------------------
select * from Admins
where Admin_Username = 'Zain' or Admin_Code = 'A12' ;
select * from Admins
where Admin_Username = 'Asad' or Admin_Code = 'A33' ;
----------------------------NOT-------------------------------------
select * from Admins
where not Admin_Username = 'Zain' ;
select * from Admins
where not Admin_Username = 'Saqib' ;
----------------------------LIKE-------------------------------------
select * from Admins
where Admin_Username like 'A%' ;
select * from Admins
where Admin_Username like 'S%' ;
----------------------------IN-------------------------------------
select * from Admins
where Admin_Username In ('Zain','Eman','Tahir' ) ;
select * from Admins
where Admin_Password In ('AS123','AX433','Az512' ) ;
----------------------------BETWEEN-------------------------------------
select * from Admins
where Admin_ID between 5 And 15 ;
select * from Admins
where Admin_ID between 25 And 35 ;

-----------------------COUNT--------------------------
SELECT COUNT (Admin_ID)Admin_ID
FROM Admins;
-----------------------AVERAGE--------------------------
SELECT AVG (Admin_ID)Admin_ID
FROM Admins;
-----------------------SUM--------------------------
SELECT SUM (Admin_ID)Admin_ID
FROM Admins;
-----------------------MIN--------------------------
SELECT MIN (Admin_ID)Admin_ID
FROM Admins;
-----------------------MAX--------------------------
SELECT MAX (Admin_ID)Admin_ID
FROM Admins;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(login_ID)login_ID,COUNT(login_ID)login_ID
,SUM(login_ID)login_ID
FROM Admins
where login_ID > 5
GROUP BY login_ID
ORDER BY AVG(login_ID)asc,COUNT(login_ID),SUM(login_ID)DESC;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(Admin_ID)Admin_ID,COUNT(Admin_ID)Admin_ID
,SUM(Admin_ID)Admin_ID
FROM Admins
where Admin_ID > 5
GROUP BY Admin_ID
ORDER BY AVG(Admin_ID)asc,COUNT(Admin_ID),SUM(Admin_ID)DESC;

------------------------Inner Join-----------------------------

SELECT Admins.Admin_ID, Roles.Role_Name
FROM Admins
INNER JOIN Roles ON Admins.Admin_ID = Roles.Role_ID;

SELECT Admins.Admin_ID, Roles.Role_Uservalue
FROM Admins
INNER JOIN Roles ON Admins.Admin_ID = Roles.Role_ID;
------------------------Left Join-----------------------------

SELECT Roles.Role_Name, Admins.Admin_ID
FROM Roles
LEFT JOIN Admins ON Admins.Admin_ID = Roles.Role_ID;

SELECT Roles.Role_Uservalue, Admins.Admin_ID
FROM Roles
LEFT JOIN Admins ON Admins.Admin_ID = Roles.Role_ID;
------------------------Right Join-----------------------------

SELECT Admins.Admin_ID, Roles.Role_Uservalue, Roles.Role_Name
FROM Admins
RIGHT JOIN Roles ON Admins.Admin_ID = Roles.Role_ID;

SELECT Admins.Admin_ID, Roles.Role_Uservalue, Roles.Role_Destination
FROM Admins
RIGHT JOIN Roles ON Admins.Admin_ID = Roles.Role_ID;
------------------------Full Join-----------------------------

SELECT Roles.Role_Uservalue, Admins.Admin_ID
FROM Roles
CROSS JOIN Admins;

SELECT Roles.Role_Destination, Admins.Admin_ID
FROM Roles
CROSS JOIN Admins;

----------Joins using where clause + order by, group by statement----------

SELECT Admins.Admin_Username,COUNT(Roles.Role_ID) AS Role_No FROM Roles
LEFT JOIN Admins ON Roles.Role_ID = Admins.Admin_ID
where Role_ID > 10
GROUP BY Admin_Username
ORDER BY (Admin_Username);

SELECT Admins.Admin_Email,COUNT(Roles.Role_ID) AS Role_No FROM Roles
LEFT JOIN Admins ON Roles.Role_ID = Admins.Admin_ID
where Role_ID > 10
GROUP BY Admin_Email
ORDER BY (Admin_Email);

SELECT Admins.Admin_Location,COUNT(Roles.Role_ID) AS Role_No FROM Roles
LEFT JOIN Admins ON Roles.Role_ID = Admins.Admin_ID
where Role_ID > 10
GROUP BY Admin_Location
ORDER BY (Admin_Username);

SELECT Admins.Admin_Password,COUNT(Roles.Role_ID) AS Role_No FROM Roles
LEFT JOIN Admins ON Roles.Role_ID = Admins.Admin_ID
where Role_ID > 10
GROUP BY Admin_Password
ORDER BY (Admin_Password);

-------------------------------------Triger For Insert----------------------------

create trigger trinsert_admins
ON Admins 
FOR INSERT 
AS 
BEGIN 
Declare @Id int 
Select @Id = Admin_ID  from Inserted 
Insert into E_MallAudt values ('New user with id = ' + CAST(@Id as nvarchar(5)) + ' is added at ' + CAST(GETDATE() as nvarchar(20)))
END

insert into Admins(Admin_ID ,Admin_Username  ,Admin_Password  ,Admin_Location   ,Admin_Code   ,Admin_Email)
values(35,'Furqan','AS123','Shalimar scheme A Block lhr','A50','furqangmail.com')

select * from E_MallAudt

---------------------------Triger For Delete -------------------------------------

create trigger trdelete_admins
ON Admins
FOR delete
AS 
BEGIN 
Declare @Id int 
Select @Id = Admin_ID  from deleted
Declare @Admin_Location varchar(40) 
Select @Admin_Location  = Admin_Location  from deleted
Insert into E_MallAudt values ('New site_available_on with id = ' + CAST(@Id as nvarchar(5)) + ' app_names = ' + @Admin_Location + ' is deleted at ' + CAST(GETDATE() as nvarchar(20)))
END

delete from Admins where Admin_Username = 'Ali';

select * from E_MallAudt

--------------------------- Triger For Update -------------------------------------

create trigger trupdate_admins
ON Admins 
FOR update 
AS 
BEGIN 
Select * from inserted ;
Select * from deleted ;
END

update Admins 
Set Admin_ID = 25, 
Admin_Username = 'hanzla',
Admin_Password = 'HN243',
Admin_Location = 'Feropur Road lhr',
Admin_Code =  'A25', 
Admin_Email = 'hanzla56@gamil.com',
login_ID = 25
where Admin_ID = 25;


--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------


create table  Roles
(Role_ID int primary key ,
Role_Name varchar(100),
Role_Uservalue int,
Role_Destination int,
Role_Password varchar(100),
Role_No int,
Admin_ID int foreign key references Admins (Admin_ID) On Delete Set NULL );

insert into Roles values(01,'Eman',10,24550,'E123',5,01)
insert into Roles values(02,'Anas',20,28440,'A124',8,02)
insert into Roles values(03,'Raza',30,12200,'R126',7,03)
insert into Roles values(04,'Zain',40,22010,'Z128',1,04)
insert into Roles values(05,'hzaifa',50,22030,'H129',6,05)
insert into Roles values(06,'Waqas',60,80820,'W876',9,06)
insert into Roles values(07,'Zoya',70,58180,'Z127',2,07)
insert into Roles values(08,'khizer',80,16320,'K120',8,08)
insert into Roles values(09,'Khan',90,24170,'K125',1,09)
insert into Roles values(10,'Eman',100,57460,'E123',5,10)
insert into Roles values(11,'Anas',110,28300,'A123',8,11)
insert into Roles values(12,'Arooj',120,41260,'A210',8,12)
insert into Roles values(13,'Raza',130,39060,'R211',3,13)
insert into Roles values(14,'Khan',140,65080,'K123',9,14)
insert into Roles values(15,'Ahmed',150,50730,'A217',16,15)
insert into Roles values(16,'ambe4r',160,49304,'A129',7,16)
insert into Roles values(17,'Tayyab',50,10360,'T127',10,17)
insert into Roles values(18,'Umer',20,66607,'U267',90,18)
insert into Roles values(19,'Taha',30,67260,'T276',7,19)
insert into Roles values(20,'Raheem',40,35090,'R129',3,20)
insert into Roles values(21,'Atif',60,47066,'A156',5,21)
insert into Roles values(22,'Noyan',70,47750,'N251',4,22)
insert into Roles values(23,'Ali',80,52070,'A193',6,23)
insert into Roles values(24,'Junaid',190,63350,'J354',7,24)
insert into Roles values(25,'Furqan',200,96100,'F910',1,25)
insert into Roles values(26,'Ali',210,64380,'A129',2,26)
insert into Roles values(27,'Ahmed',220,66040,'A127',9,27)
insert into Roles values(28,'Asad',230,40120,'A101',8,28)
insert into Roles values(29,'Waqas',240,95150,'W193',5,29)
insert into Roles values(30,'Ahsan',250,34000,'AH123',4,30)

---------------------------- Procedure for Insert -------------------------------------

Create Procedure spinsert_roles
(@Role_ID int ,
@Role_Name varchar(100),
@Role_Uservalue int,
@Role_Destination int,
@Role_Password varchar(100),
@Role_No int,
@Admin_ID int)
as Begin
insert into Roles values(@Role_ID, @Role_Name, @Role_Uservalue, @Role_Destination, @Role_Password, @Role_No , @Admin_ID)
End

Execute spinsert_roles 28,'Zara',67,74521,'Z129',6,28;

Select * from Roles;

---------------------------- Procedure for Delete -------------------------------------

Create Procedure spdelete_roles
@Role_ID int
as
Begin
delete from Roles where Role_ID = @Role_ID ;
End

Execute spdelete_roles 27;

Select * from Admins;

---------------------------- Procedure for Update -------------------------------------

Create Procedure spupdate_roles
(@Role_ID int ,
@Role_Name varchar(100),
@Role_Uservalue int,
@Role_Destination int,
@Role_Password varchar(100),
@Role_No int,
@Admin_ID int)
as
Begin  
update Roles 
Set Role_ID = @Role_ID,
Role_Name = @Role_Name,
Role_Uservalue = @Role_Uservalue ,
Role_Destination = @Role_Destination,
Role_Password = @Role_Password,
Role_No = @Role_No,
Admin_ID = @Admin_ID
where Role_ID = @Role_ID
End

Execute spupdate_roles  24,'Javeed',45,48845,'JD226',8,24;

Select * from Roles;
 
----------------------------------------------------------------------------------------------- Queries On Role Table (35 Queries) --
----------------------------AND-------------------------------------
select * from Roles
where Role_Name = 'Khan' and Role_Destination =1 ;
select * from Roles
where Role_Name = 'Anas' and Role_Destination = 8 ;
----------------------------OR-------------------------------------
select * from Roles
where Role_Name = 'Zain' or Role_Destination = 7 ;
select * from Roles
where Role_Name = 'Asad' or Role_Destination = 3 ;
----------------------------NOT-------------------------------------
select * from Roles
where not Role_Name = 'Zain' ;
select * from Roles
where not Role_Name = 'Saqib' ;
----------------------------LIKE-------------------------------------
select * from Roles
where Role_Name like 'A%' ;
select * from Roles
where Role_Name like 'Z%' ;
----------------------------IN-------------------------------------
select * from Roles
where Role_Name In ('Ali','Raza','Khan' ) ;
select * from Roles
where Role_Destination In (8,7,3 ) ;
----------------------------BETWEEN-------------------------------------
select * from Roles
where Role_Uservalue between 10 And 40 ;
select * from Roles
where Role_Uservalue between 50 And 200 ;

-----------------------COUNT--------------------------
SELECT COUNT (Role_Uservalue)Role_Uservalue
FROM Roles;
-----------------------AVERAGE--------------------------
SELECT AVG (Role_Uservalue)Role_Uservalue
FROM Roles;
-----------------------SUM--------------------------
SELECT SUM (Role_Uservalue)Role_Uservalue
FROM Roles;
-----------------------MIN--------------------------
SELECT MIN (Role_Uservalue)Role_Uservalue
FROM Roles;
-----------------------MAX--------------------------
SELECT MAX (Role_Uservalue)Role_Uservalue
FROM Roles;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(Role_Uservalue)Role_Uservalue,COUNT(Role_Uservalue)Role_Uservalue
,SUM(Role_Uservalue)Role_Uservalue
FROM Roles
where Role_Uservalue > 50
GROUP BY Admin_ID
ORDER BY AVG(Role_Uservalue)asc,COUNT(Role_Uservalue),SUM(Role_Uservalue)DESC;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(Role_No)Role_No,COUNT(Role_No)Role_No
,SUM(Role_No)Role_No
FROM Roles
where Role_No > 10
GROUP BY Role_No
ORDER BY AVG(Role_No)asc,COUNT(Role_No),SUM(Role_No)DESC;

------------------------Inner Join-----------------------------

SELECT Roles.Role_ID, Customers.Customer_Name
FROM Roles
INNER JOIN Customers ON Roles.Role_ID = Customers.Cutomer_ID;

SELECT Roles.Role_ID, Customers.Customer_DOB
FROM Roles
INNER JOIN Customers ON Roles.Role_ID = Customers.Cutomer_ID;

------------------------Left Join-----------------------------

SELECT Roles.Role_Name, Customers.Cutomer_ID
FROM Roles
LEFT JOIN Customers ON Customers.Cutomer_ID = Roles.Role_ID;

SELECT Roles.Role_Destination, Customers.customer_Email
FROM Roles
LEFT JOIN Customers ON Customers.Cutomer_ID = Roles.Role_ID;

------------------------Right Join-----------------------------

SELECT Customers.Cutomer_ID, Roles.Role_Password, Roles.Role_Uservalue
FROM Customers
RIGHT JOIN Roles ON Customers.Cutomer_ID = Roles.Role_ID;

SELECT Customers.Customer_Name, Roles.Role_Password, Roles.Role_Uservalue
FROM Customers
RIGHT JOIN Roles ON Customers.Cutomer_ID = Roles.Role_ID;

------------------------Full Join-----------------------------

SELECT Roles.Role_Name, Customers.Cutomer_ID
FROM Roles
CROSS JOIN Customers;

SELECT Roles.Role_No, Customers.Customer_Name
FROM Roles
CROSS JOIN Customers;

----------Joins using where clause + order by, group by statement----------

SELECT Roles.Role_Destination,COUNT(Customers.Cutomer_ID) AS Customer_Mobile_no FROM Customers
LEFT JOIN Roles ON Customers.Cutomer_ID = Roles.Role_ID
where Cutomer_ID > 10
GROUP BY Role_Destination
ORDER BY (Role_Destination);

SELECT Roles.Role_Name,COUNT(Customers.Cutomer_ID) AS Customer_Mobile_no FROM Customers
LEFT JOIN Roles ON Customers.Cutomer_ID = Roles.Role_ID
where Cutomer_ID > 10
GROUP BY Role_Name
ORDER BY (Role_Name);

SELECT Roles.Role_No,COUNT(Customers.Cutomer_ID) AS Customer_Mobile_no FROM Customers
LEFT JOIN Roles ON Customers.Cutomer_ID = Roles.Role_ID
where Cutomer_ID > 10
GROUP BY Role_No
ORDER BY (Role_No);

SELECT Roles.Role_Password,COUNT(Customers.Cutomer_ID) AS Customer_Mobile_no FROM Customers
LEFT JOIN Roles ON Customers.Cutomer_ID = Roles.Role_ID
where Cutomer_ID > 10
GROUP BY Role_Password
ORDER BY (Role_Password);

-------------------------------------Triger For Insert----------------------------

create trigger trinsert_roles
ON Roles 
FOR INSERT 
AS 
BEGIN 
Declare @Id int 
Select @Id = Role_ID  from Inserted 
Insert into E_MallAudt values ('New user with id = ' + CAST(@Id as nvarchar(5)) + ' is added at ' + CAST(GETDATE() as nvarchar(20)))
END

insert into Roles(Role_ID ,Role_Name   ,Role_Uservalue ,Role_Destination    ,Role_Password    ,Role_No  )
values(51,'Ahsan',340,19100,'AH861',4)

select * from E_MallAudt

---------------------------Triger For Delete -------------------------------------

create trigger trdelete_roles
ON Roles
FOR delete
AS 
BEGIN 
Declare @Id int 
Select @Id = Role_ID  from deleted
Declare @Role_Name varchar(40) 
Select @Role_Name  = Role_Name  from deleted
Insert into E_MallAudt values ('New site_available_on with id = ' + CAST(@Id as nvarchar(5)) + ' app_names = ' + @Role_Name + ' is deleted at ' + CAST(GETDATE() as nvarchar(20)))
END

delete from Roles where Role_ID = 5;
--select * from Roles 
--Select * from Customers
select * from E_MallAudt

--------------------------- Triger For Update -------------------------------------

create trigger trupdate_roles
ON Roles 
FOR update 
AS 
BEGIN 
Select * from inserted ;
Select * from deleted ;
END

update Roles
Set Role_ID = 21,
Role_Name = 'Shehreyar',
Role_Uservalue = 221 ,
Role_Destination = 234121,
Role_Password = 'SH452',
Role_No = 7,
Admin_ID = 21
where Role_ID = 21

--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------


create table Customers
(Cutomer_ID int not null Primary Key,
Customer_Name varchar(100),
Customer_Password varchar(100),
Customer_Mobile_no bigint,
customer_Email varchar(100),
Customer_DOB varchar(50),
Role_ID int foreign key references Roles(Role_ID) On Delete Set NULL ); 

insert into Customers values(01,'Ali','AS123',03004344710,'ali@gmail.com','1-1-1990',01)
insert into Customers values(02,'Ahmed','AD124',03004344711,'ahmed@gmail.com','2-1-1990',02)
insert into Customers values(03,'Asad','AQ122',03004344712,'asad@gmail.com','3-1-1990',03)
insert into Customers values(04,'Waqas','AZ231',03004344713,'waqas@gmail.com','4-1-1990',04)
insert into Customers values(05,'Ahsan','AT321',03004344714,'ahsan@gmail.com','5-1-1990',05)
insert into Customers values(06,'Eman','AJ345',03004344715,'Eman@gmail.com','6-1-1990',06)
insert into Customers values(07,'Anas','AG781',03004344716,'anas@gmail.com','7-1-1990',07)
insert into Customers values(08,'Raza','AE267',03004344717,'raza@gmail.com','8-1-1990',08)
insert into Customers values(09,'Zain','Az512',03004344718,'zain@gmail.com','9-1-1990',09)
insert into Customers values(10,'hzaifa','AN388',03004344719,'huzaifa@gmail.com','10-1-1990',10)
insert into Customers values(11,'Adel','AM355',03004344720,'adel@gmail.com','1-2-1990',11)
insert into Customers values(12,'Emad','AO342',03004344721,'emad@gmail.com','1-3-1990',12)
insert into Customers values(13,'hassan','AP783',03004344722,'hassan@gmail.com','1-4-1990',13)
insert into Customers values(14,'Saqib','AQ123',03004344723,'saqib@gmail.com','1-5-1990',14)
insert into Customers values(15,'Abdullah','AY565',03004344724,'abdullah@gmail.com','1-6-1990',15)
insert into Customers values(16,'Ambar','AU656',03004344725,'aambar@gmail.com','1-7-1990',16)
insert into Customers values(17,'Tahir','AN533',03004344726,'tahirgmail.com','1-8-1990',17)
insert into Customers values(18,'Shakir','AY900',03004344727,'shakir@gmail.com','1-9-1990',18)
insert into Customers values(19,'AbuBakkar','AT566',03004344728,'abubakkar@gmail.com','2-9-1990',19)
insert into Customers values(20,'Fahad','AX433',03004344729,'fahad@gmail.com','3-9-1990',20)
insert into Customers values(21,'Ali','AS123',03004344730,'ali@gmail.com','4-9-1990',21)
insert into Customers values(22,'Ahmed','AD124',03004344731,'ahmed@gmail.com','5-9-1990',22)
insert into Customers values(23,'Asad','AQ122',03229777775,'asad@gmail.com','6-9-1990',23)
insert into Customers values(24,'Waqas','AZ231',03229777776,'waqas@gmail.com','7-9-1990',24)
insert into Customers values(25,'Ahsan','AT321',03229777777,'ahsan@gmail.com','8-9-1990',25)
insert into Customers values(26,'Eman','AJ345',03229777778,'Eman@gmail.com','9-9-1990',26)
insert into Customers values(27,'Anas','AG781',03229777779,'anas@gmail.com','10-9-1990',27)
insert into Customers values(28,'Raza','AE267',03229777771,'raza@gmail.com','11-9-1990',28)
insert into Customers values(29,'Zain','Az512',03229777772,'zain@gmail.com','12-9-1990',29)
insert into Customers values(30,'huzaifa','AN388',03229777773,'huzaifa@gmail.com','13-9-1990',30)

---------------------------- Procedure for Insert -------------------------------------

Create Procedure spinsert_customers
(@Cutomer_ID int ,
@Customer_Name varchar(100),
@Customer_Password varchar(100),
@Customer_Mobile_no bigint,
@customer_Email varchar(100),
@Customer_DOB varchar(50),
@Role_ID int)
as Begin
insert into Roles values(@Cutomer_ID, @Customer_Name, @Customer_Password, @Customer_Mobile_no, @customer_Email, @Customer_DOB , @Role_ID)
End

Execute spinsert_customers 28,'Zara','ZN342',036743836533,'zara34@gmail.com','25-6-2003',28;

Select * from Customers;

---------------------------- Procedure for Delete -------------------------------------

Create Procedure spdelete_customers
@Cutomer_ID int
as
Begin
delete from Customers where Cutomer_ID = @Cutomer_ID ;
End

Execute spdelete_customers 17;

Select * from Customers;

---------------------------- Procedure for Update -------------------------------------

Create Procedure spupdate_customers
(@Cutomer_ID int ,
@Customer_Name varchar(100),
@Customer_Password varchar(100),
@Customer_Mobile_no bigint,
@customer_Email varchar(100),
@Customer_DOB varchar(50),
@Role_ID int)
as
Begin  
update Customers 
Set Cutomer_ID = @Cutomer_ID ,
Customer_Name = @Customer_Name ,
Customer_Password = @Customer_Password,
Customer_Mobile_no = @Customer_Mobile_no,
customer_Email = @customer_Email ,
Customer_DOB = @Customer_DOB ,
Role_ID = @Role_ID 
where Cutomer_ID = @Cutomer_ID
End

Execute spupdate_customers  14,'Alizeh','AL544',03415828459,'alizeh454@gmail.com','26-12-1998',14;

Select * from Customers;

----------------------------------------------------------------------------------------------- Queries On Customer Table (35 Queries) --
----------------------------AND-------------------------------------
select* from Customers
where Customer_Name = 'Ahmed' and Customer_Password ='AD124' ;
select* from Customers
where Customer_Name = 'Anas' and Customer_Password = 'AG781' ;
----------------------------OR-------------------------------------
select* from Customers
where Customer_Name = 'Asad' or Customer_Password = 'AG781' ;
select* from Customers
where Customer_Name = 'AbuBakkar' or Customer_Password = 'AD124' ;
----------------------------NOT-------------------------------------
select* from Customers
where not Customer_Name = 'Ali' ;
select* from Customers
where not Customer_Name = 'Shakir' ;
----------------------------LIKE-------------------------------------
select * from Customers
where Customer_Name like 'A%' ;
select * from Customers
where Customer_Name like 'E%' ;
----------------------------IN-------------------------------------
select * from Customers
where Customer_Name In ('Asad','AbuBakkar','Khan' ) ;
select * from Customers
where Customer_Password In ('AS123','AD124','AZ231' ) ;
----------------------------BETWEEN-------------------------------------
select * from Customers
where Role_ID between 10 And 40 ;
select * from Customers
where Role_ID between 30 And 45 ;

-----------------------COUNT--------------------------
SELECT COUNT (Cutomer_ID)Cutomer_ID
FROM Customers;
-----------------------AVERAGE--------------------------
SELECT AVG (Cutomer_ID)Cutomer_ID
FROM Customers;
-----------------------SUM--------------------------
SELECT SUM (Cutomer_ID)Cutomer_ID
FROM Customers;
-----------------------MIN--------------------------
SELECT MIN (Cutomer_ID)Cutomer_ID
FROM Customers;
-----------------------MAX--------------------------
SELECT MAX (Cutomer_ID)Cutomer_ID
FROM Customers;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(Role_ID)Role_ID,COUNT(Role_ID)Role_ID
,SUM(Role_ID)Role_ID
FROM Customers
where Role_ID > 10
GROUP BY Role_ID
ORDER BY AVG(Role_ID)asc,COUNT(Role_ID),SUM(Role_ID)DESC;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(Cutomer_ID)Cutomer_ID,COUNT(Cutomer_ID)Cutomer_ID
,SUM(Cutomer_ID)Cutomer_ID
FROM Customers
where Cutomer_ID > 10
GROUP BY Cutomer_ID
ORDER BY AVG(Cutomer_ID)asc,COUNT(Cutomer_ID),SUM(Cutomer_ID)DESC;

------------------------Inner Join-----------------------------

SELECT Customers.Cutomer_ID, Locations.Customer_Location
FROM Customers
INNER JOIN Locations ON Customers.Cutomer_ID = Locations.Location_ID;

SELECT Customers.Customer_Name, Locations.Location_code
FROM Customers
INNER JOIN Locations ON Customers.Cutomer_ID = Locations.Location_ID;

------------------------Left Join-----------------------------

SELECT Locations.Admion_Location, Customers.Customer_DOB
FROM Locations
LEFT JOIN Customers ON Customers.Cutomer_ID = Locations.Location_ID;

SELECT Locations.Mobile_No, Customers.Customer_DOB
FROM Locations
LEFT JOIN Customers ON Customers.Cutomer_ID = Locations.Location_ID;

------------------------Right Join-----------------------------

SELECT Customers.Cutomer_ID, Locations.Location_code, Locations.Mobile_No
FROM Customers
RIGHT JOIN Locations ON Customers.Cutomer_ID = Locations.Location_ID

SELECT Customers.Cutomer_ID, Locations.Customer_Location, Locations.Mobile_No
FROM Customers
RIGHT JOIN Locations ON Customers.Cutomer_ID = Locations.Location_ID

------------------------Full Join-----------------------------

SELECT Locations.Customer_Location, Customers.Cutomer_ID
FROM Locations
CROSS JOIN Customers;

SELECT Locations.Customer_Location, Customers.Customer_Name
FROM Locations
CROSS JOIN Customers;

----------Joins using where clause + order by, group by statement----------

SELECT Customers.Cutomer_ID,COUNT(Locations.Location_ID) AS Mobile_No FROM Customers
LEFT JOIN Locations ON Locations.Location_ID = Locations.Location_ID
where Location_ID > 10
GROUP BY Cutomer_ID
ORDER BY (Cutomer_ID);

SELECT Customers.Customer_Name,COUNT(Locations.Location_ID) AS Mobile_No FROM Customers
LEFT JOIN Locations ON Locations.Location_ID = Locations.Location_ID
where Location_ID > 10
GROUP BY Customer_Name
ORDER BY (Customer_Name);

SELECT Customers.customer_Email,COUNT(Locations.Location_ID) AS Mobile_No FROM Customers
LEFT JOIN Locations ON Locations.Location_ID = Locations.Location_ID
where Location_ID > 10
GROUP BY customer_Email
ORDER BY (customer_Email);

SELECT Customers.Customer_Password,COUNT(Locations.Location_ID) AS Mobile_No FROM Customers
LEFT JOIN Locations ON Locations.Location_ID = Locations.Location_ID
where Location_ID > 10
GROUP BY Customer_Password
ORDER BY (Customer_Password);

-------------------------------------Triger For Insert----------------------------

create trigger trinsert_customers
ON Customers 
FOR INSERT 
AS 
BEGIN 
Declare @Id int 
Select @Id =  Cutomer_ID  from Inserted 
Insert into E_MallAudt values ('New user with id = ' + CAST(@Id as nvarchar(5)) + ' is added at ' + CAST(GETDATE() as nvarchar(20)))
END

insert into Customers(Cutomer_ID  ,Customer_Name    ,Customer_Password  ,Customer_Mobile_no     ,customer_Email     ,Customer_DOB   )
values(51,'Furqan','AS123',03004300008,'furqangmail.com','5-10-1990')

select * from E_MallAudt

---------------------------Triger For Delete -------------------------------------

create trigger trdelete_customers
ON Customers
FOR delete
AS 
BEGIN 
Declare @Id int 
Select @Id = Cutomer_ID  from deleted
Declare @Customer_Name varchar(40) 
Select @Customer_Name  = Customer_Name  from deleted
Insert into E_MallAudt values ('New site_available_on with id = ' + CAST(@Id as nvarchar(5)) + ' app_names = ' + @Customer_Name + ' is deleted at ' + CAST(GETDATE() as nvarchar(20)))
END

delete from Customers where Cutomer_ID = 2;

select * from  Customers

--------------------------- Triger For Update -------------------------------------

create trigger trupdate_customers
ON Customers
FOR update 
AS 
BEGIN 
Select * from inserted ;
Select * from deleted ;
END

update Customers
Set Cutomer_ID = 22,
Customer_Name = 'huzaifa' ,
Customer_Password = 'HU239',
Customer_Mobile_no = 03348720148,
customer_Email = 'huzaifa87@gamil.com' ,
Customer_DOB = '18-5-1995' ,
Role_ID = 22 
where Cutomer_ID = 22


--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------


create table Locations 
(Location_ID int not null primary key,
Location_code int,
Mobile_No bigint,
Customer_Location  varchar(100),
Admion_Location varchar(100),
login_ID int foreign key references Logins(login_ID) On Delete Set NULL );

insert into Locations values(01,112,03004344710,'Lahore','Lahore',01)
insert into Locations values(02,554,03004344711,'Karachi','Lahore',02)
insert into Locations values(03,665,03004344712,'Gujranwala','Lahore',03)
insert into Locations values(04,332,03004344713,'Sialkot','Lahore',04)
insert into Locations values(05,887,03004344714,'Sheikhpura','Lahore',05)
insert into Locations values(06,554,03004344715,'Rawal pindi','Lahore',06)
insert into Locations values(07,998,03004344716,'Islamabad','Lahore',07)
insert into Locations values(08,112,03004344717,'Lahore','Lahore',08)
insert into Locations values(09,554,03004344718,'Karachi','Lahore',09)
insert into Locations values(10,448,03004344719,'Sialkot','Lahore',10)
insert into Locations values(11,322,03004344720,'Islamabad','Lahore',11)
insert into Locations values(12,123,03004344721,'Rawal Pindi','Lahore',12)
insert into Locations values(13,852,03004344722,'Murre','Lahore',13)
insert into Locations values(14,456,03004344723,'Sakhar','Lahore',14)
insert into Locations values(15,698,03004344724,'Multan','Lahore',15)
insert into Locations values(16,321,03004344725,'Okara','Lahore',16)
insert into Locations values(17,145,03004344726,'Gujranwala','Lahore',17)
insert into Locations values(18,457,03004344727,'Sheikhpura','Lahore',18)
insert into Locations values(19,245,03004344728,'Sialkot','Lahore',19)
insert into Locations values(20,321,03004344729,'Lahore','Lahore',20)
insert into Locations values(21,123,03004344730,'sheikhpura','Lahore',21)
insert into Locations values(22,214,03004344731,'Karachi','Lahore',22)
insert into Locations values(23,874,03229777775,'Sialkot','Lahore',23)
insert into Locations values(24,324,03229777776,'Gujranwala','Lahore',24)
insert into Locations values(25,148,03229777777,'Rawal Pindi','Lahore',25)
insert into Locations values(26,985,03229777778,'Sakhar','Lahore',26)
insert into Locations values(27,245,03229777779,'Hyderabad','Lahore',27)
insert into Locations values(28,324,03229777771,'Karachi','Lahore',28)
insert into Locations values(29,147,03229777772,'Islamabad','Lahore',29)
insert into Locations values(30,874,03229777773,'Murre','Lahore',30)


----------------------------------------------------------------------------------------------- Queries On Location Table (35 Queries) --
----------------------------AND-------------------------------------
select* from Locations
where Customer_Location = 'Lahore' and Location_code =112 ;
select* from Locations
where Customer_Location = 'Karachi' and Location_code = 554;
----------------------------OR-------------------------------------
select* from Locations
where Customer_Location = 'Islamabad' or Location_code = 998 ;
select* from Locations
where Customer_Location = 'Sialkot' or Location_code = 123 ;
----------------------------NOT-------------------------------------
select* from Locations
where not Customer_Location = 'Sialkot' ;
select* from Locations
where not Customer_Location = 'Hyderabad' ;
----------------------------LIKE-------------------------------------
select * from Locations
where Customer_Location like 'L%' ;
select * from Locations
where Customer_Location like 'K%' ;
----------------------------IN-------------------------------------
select * from Locations
where Customer_Location In ('Karachi','Rawal pindi','Murre' ) ;
select * from Locations
where Location_code In (554,665,887 ) ;
----------------------------BETWEEN-------------------------------------
select * from Locations
where Location_code between 100 And 200 ;
select * from Locations
where Location_code between 300 And 500 ;

-----------------------COUNT--------------------------
SELECT COUNT (Location_code)Location_code
FROM Locations;
-----------------------AVERAGE--------------------------
SELECT AVG (Location_code)Location_code
FROM Locations;
-----------------------SUM--------------------------
SELECT SUM (Location_code)Location_code
FROM Locations;
-----------------------MIN--------------------------
SELECT MIN (Location_code)Location_code
FROM Locations;
-----------------------MAX--------------------------
SELECT MAX (Location_code)Location_code
FROM Locations;
-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(Location_code)Location_code,COUNT(Location_code)Location_code
,SUM(Location_code)Location_code
FROM Locations
where Location_ID > 10
GROUP BY Location_code
ORDER BY AVG(Location_code)asc,COUNT(Location_code),SUM(Location_code)DESC;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(Location_ID)Location_ID,COUNT(Location_ID)Location_ID
,SUM(Location_ID)Location_ID
FROM Locations
where Location_ID > 10
GROUP BY Location_ID
ORDER BY AVG(Location_ID)asc,COUNT(Location_ID),SUM(Location_ID)DESC;

------------------------Inner Join-----------------------------

SELECT Locations.Location_ID, Payments.payment_desc
FROM Locations
INNER JOIN Payments ON Locations.Location_ID = Payments.payment_ID;

SELECT Locations.Admion_Location, Payments.payment_desc
FROM Locations
INNER JOIN Payments ON Locations.Location_ID = Payments.payment_ID;

------------------------Left Join-----------------------------

SELECT Payments.payment_amount, Locations.Location_ID
FROM Payments
LEFT JOIN Locations ON Locations.Location_ID = Payments.payment_ID;

SELECT Payments.payment_amount, Locations.Customer_Location
FROM Payments
LEFT JOIN Locations ON Locations.Location_ID = Payments.payment_ID;

------------------------Right Join-----------------------------

SELECT Locations.Location_ID, Payments.payment_date, Payments.payment_amount
FROM Locations
RIGHT JOIN Payments ON Locations.Location_ID = Payments.payment_ID

SELECT Locations.Location_ID, Payments.payment_type, Payments.payment_amount
FROM Locations
RIGHT JOIN Payments ON Locations.Location_ID = Payments.payment_ID

------------------------Full Join-----------------------------

SELECT Payments.payment_amount, Locations.Location_ID
FROM Payments
CROSS JOIN Locations;

SELECT Payments.payment_type, Locations.Location_ID
FROM Payments
CROSS JOIN Locations;

----------Joins using where clause + order by, group by statement----------

SELECT Payments.payment_amount,COUNT(Locations.Location_ID) AS Location_ID FROM Locations
LEFT JOIN Payments ON Locations.Location_ID = Payments.payment_ID
where Location_ID > 10
GROUP BY payment_amount
ORDER BY (payment_amount);

SELECT Payments.payment_customer_ID,COUNT(Locations.Location_ID) AS Location_ID FROM Locations
LEFT JOIN Payments ON Locations.Location_ID = Payments.payment_ID
where Location_ID > 10
GROUP BY payment_customer_ID
ORDER BY (payment_customer_ID);

SELECT Payments.payment_date,COUNT(Locations.Location_ID) AS Location_ID FROM Locations
LEFT JOIN Payments ON Locations.Location_ID = Payments.payment_ID
where Location_ID > 10
GROUP BY payment_date
ORDER BY (payment_date);

SELECT Payments.payment_desc,COUNT(Locations.Location_ID) AS Location_ID FROM Locations
LEFT JOIN Payments ON Locations.Location_ID = Payments.payment_ID
where Location_ID > 10
GROUP BY payment_desc
ORDER BY (payment_desc);

-------------------------------------Triger For Insert----------------------------

create trigger Tr_location_ForInsert5
ON Locations 
FOR INSERT 
AS 
BEGIN 
Declare @Id int 
Select @Id =  Location_ID  from Inserted 
Insert into E_MallAudt values ('New user with id = ' + CAST(@Id as nvarchar(5)) + ' is added at ' + CAST(GETDATE() as nvarchar(20)))
END

insert into Locations(Location_ID  ,Location_code ,Mobile_No   ,Customer_Location  ,Admion_Location )
values(51,112,03004300008,'Multan','Lahore')
select * from E_MallAudt

---------------------------Triger For Delete -------------------------------------

create trigger Tr_Location_Fordelete11
ON Locations
FOR delete
AS 
BEGIN 
Declare @Id int 
Select @Id = Location_ID   from deleted
Declare @Customer_Location   varchar(40) 
Select @Customer_Location    = Customer_Location    from deleted
Insert into E_MallAudt values ('New site_available_on with id = ' + CAST(@Id as nvarchar(5)) + ' app_names = ' + @Customer_Location   + ' is deleted at ' + CAST(GETDATE() as nvarchar(20)))
END

delete from Locations where Location_ID = 6;
select * from  Locations


--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------



create table Payments 
(payment_ID int not null primary key,
payment_customer_ID int,
payment_desc varchar(25),
payment_amount int,
payment_date varchar(100) ,
payment_type varchar(25));

insert into Payments values(01,101,'Successful',100,'1/1/20','cash');
insert into Payments values(02,202,'Successful',200,'2/1/20','credit');
insert into Payments values(03,023,'Successful',300,'3/1/20','credit');
insert into Payments values(04,024,'Successful',400,'4/1/20','cash');
insert into Payments values(05,053,'Successful',500,'5/1/20','credit');
insert into Payments values(06,064,'Successful',700,'7/1/20','credit');
insert into Payments values(07,075,'Successful',800,'8/1/20','cash');
insert into Payments values(08,088,'Successful',900,'9/1/20','cash');
insert into Payments values(09,097,'Successful',150,'10/1/20','credit');
insert into Payments values(10,107,'Successful',121,'11/1/20','cash');
insert into Payments values(11,119,'Successful',159,'12/1/20','credit');
insert into Payments values(12,127,'Successful',125,'13/1/20','credit');
insert into Payments values(13,138,'Successful',233,'14/1/20','cash');
insert into Payments values(14,142,'Successful',2454,'15/1/20','credit');
insert into Payments values(15,151,'Successful',2435,'17/1/20','cash');
insert into Payments values(16,16,'Successful',3457,'18/1/20','credit');
insert into Payments values(17,177,'Successful',875,'19/1/20','cash');
insert into Payments values(18,183,'Successful',2345,'20/1/20','credit');
insert into Payments values(19,194,'Successful',987,'21/1/20','credit');
insert into Payments values(20,207,'Successful',5431,'22/1/20','credit');
insert into Payments values(21,218,'Successful',2345,'23/1/20','cash');
insert into Payments values(22,228,'Successful',1234,'24/1/20','credit');
insert into Payments values(23,231,'Successful',75,'25/1/20','cash');
insert into Payments values(24,245,'Successful',2345,'27/1/20','cash');
insert into Payments values(25,257,'Successful',753,'28/1/20','credit');
insert into Payments values(26,268,'Successful',234,'29/1/20','credit');
insert into Payments values(27,27,'Successful',875,'29/1/20','cash');
insert into Payments values(28,289,'Successful',439,'30/1/20','credit');
insert into Payments values(29,291,'Successful',99,'31/1/20','cash');
insert into Payments values(30,302,'Successful',543,'1/2/20','credit');

---------------------------- Procedure for Insert -------------------------------------

Create Procedure spinsert_payments
(@payment_ID int ,
@payment_customer_ID int,
@payment_desc varchar(25),
@payment_amount int,
@payment_date varchar(100) ,
@payment_type varchar(25))
as Begin
insert into Payments values(@payment_ID, @payment_customer_ID, @payment_desc, @payment_amount, @payment_date, @payment_type )
End

Execute spinsert_payments  31,623,'Successful',1000,'23-6-2023','credit';

Select * from Payments;

---------------------------- Procedure for Delete -------------------------------------

Create Procedure spdelete_payments
@payment_ID int
as
Begin
delete from Payments where payment_ID = @payment_ID ;
End

Execute spdelete_payments 17;

Select * from Payments;

---------------------------- Procedure for Update -------------------------------------

Create Procedure spupdate_Payments
(@payment_ID int ,
@payment_customer_ID int,
@payment_desc varchar(25),
@payment_amount int,
@payment_date varchar(100) ,
@payment_type varchar(25))
as
Begin  
update Payments
Set payment_ID = @payment_ID ,
payment_customer_ID = @payment_customer_ID ,
payment_desc = @payment_desc ,
payment_amount = @payment_amount ,
payment_date = @payment_date ,
payment_type = @payment_type 
where payment_ID = @payment_ID
End

Execute spupdate_payments  14,432,'Successful',543,'26-12-2023','cash';

Select * from Payments;

----------------------------------------------------------------------------------------------- Queries On Payments Table (35 Queries) --
----------------------------AND-------------------------------------
select* from Payments
where payment_customer_ID =  101 and payment_amount =100 ;
select* from Payments
where payment_customer_ID = 097 and payment_amount = 150;
----------------------------OR-------------------------------------
select* from Payments
where payment_customer_ID = 183 or payment_amount = 800 ;
select* from Payments
where payment_customer_ID = 194 or payment_amount = 900 ;
----------------------------NOT-------------------------------------
select* from Payments
where not payment_customer_ID = 064 ;
select* from Payments
where not payment_customer_ID = 142 ;
----------------------------LIKE-------------------------------------
select * from Payments
where payment_amount like 1 ;
select * from Payments
where payment_amount like 0 ;
----------------------------IN-------------------------------------
select * from Payments
where payment_customer_ID In (024,202,023) ;
select * from Payments
where payment_customer_ID In (064,665,887 ) ;
----------------------------BETWEEN-------------------------------------
select * from Payments
where payment_customer_ID between 100 And 200 ;
select * from Payments
where payment_customer_ID between 150 And 200 ;

-----------------------COUNT--------------------------
SELECT COUNT (payment_customer_ID)payment_customer_ID
FROM Payments;
-----------------------AVERAGE--------------------------
SELECT AVG (payment_customer_ID)payment_customer_ID
FROM Payments;
-----------------------SUM--------------------------
SELECT SUM (payment_customer_ID)payment_customer_ID
FROM Payments;
-----------------------MIN--------------------------
SELECT MIN (payment_customer_ID)payment_customer_ID
FROM Payments;
-----------------------MAX--------------------------
SELECT MAX (payment_customer_ID)payment_customer_ID
FROM Payments;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(payment_amount)payment_amount,COUNT(payment_amount)payment_amount
,SUM(payment_amount)payment_amount
FROM Payments
where payment_amount > 50
GROUP BY payment_amount
ORDER BY AVG(payment_amount)asc,COUNT(payment_amount),SUM(payment_amount)DESC;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(payment_ID)payment_ID,COUNT(payment_ID)payment_ID
,SUM(payment_ID)payment_ID
FROM Payments
where payment_ID > 5
GROUP BY payment_ID
ORDER BY AVG(payment_ID)asc,COUNT(payment_ID),SUM(payment_ID)DESC;

------------------------Inner Join-----------------------------

SELECT Payments.payment_ID, Devices.device_company_name
FROM Payments
INNER JOIN Devices ON Payments.payment_ID = Devices.device_ID;
SELECT Payments.payment_desc, Devices.device_company_name
FROM Payments
INNER JOIN Devices ON Payments.payment_ID = Devices.device_ID;

------------------------Left Join-----------------------------

SELECT Devices.device_model, Payments.payment_ID
FROM Devices
LEFT JOIN Payments ON Payments.payment_ID = Devices.device_ID;

SELECT Devices.device_password, Payments.payment_ID
FROM Devices
LEFT JOIN Payments ON Payments.payment_ID = Devices.device_ID;

------------------------Right Join-----------------------------

SELECT Payments.payment_ID, Devices.device_model, Devices.device_type
FROM Payments
RIGHT JOIN Devices ON Payments.payment_ID = Devices.device_ID

SELECT Payments.payment_ID, Devices.device_user_name, Devices.device_type
FROM Payments
RIGHT JOIN Devices ON Payments.payment_ID = Devices.device_ID

------------------------Full Join-----------------------------

SELECT Devices.device_user_name, Payments.payment_ID
FROM Devices
CROSS JOIN Payments;

SELECT Devices.device_model, Payments.payment_ID
FROM Devices
CROSS JOIN Payments;

----------Joins using where clause + order by, group by statement----------

SELECT Devices.device_company_name,COUNT(Payments.payment_ID) AS payment_ID FROM Payments
LEFT JOIN Devices ON Payments.payment_ID = Devices.device_ID
where payment_ID > 10
GROUP BY device_company_name
ORDER BY (device_company_name);

SELECT Devices.device_ID,COUNT(Payments.payment_ID) AS payment_ID FROM Payments
LEFT JOIN Devices ON Payments.payment_ID = Devices.device_ID
where payment_ID > 10
GROUP BY device_ID
ORDER BY (device_ID);

SELECT Devices.device_model,COUNT(Payments.payment_ID) AS payment_ID FROM Payments
LEFT JOIN Devices ON Payments.payment_ID = Devices.device_ID
where payment_ID > 10
GROUP BY device_model
ORDER BY (device_model);

SELECT Devices.device_type,COUNT(Payments.payment_ID) AS payment_ID FROM Payments
LEFT JOIN Devices ON Payments.payment_ID = Devices.device_ID
where payment_ID > 10
GROUP BY device_type
ORDER BY (device_type);

-------------------------------------Triger For Insert----------------------------

create trigger trinsert_payments
ON Payments 
FOR INSERT 
AS 
BEGIN 
Declare @Id int 
Select @Id =  payment_ID   from Inserted 
Insert into E_MallAudt values ('New user with id = ' + CAST(@Id as nvarchar(5)) + ' is added at ' + CAST(GETDATE() as nvarchar(20)))
END

insert into Payments(payment_ID ,payment_customer_ID  ,payment_desc    ,payment_amount   ,payment_date ,payment_type  )
values(51,508,'Successful',950,'2020/03/12','cash');
select * from E_MallAudt

---------------------------Triger For Delete -------------------------------------

create trigger trdelete_payments
ON Payments
FOR delete
AS 
BEGIN 
Declare @Id int 
Select @Id = payment_ID    from deleted
Declare @payment_desc    varchar(40) 
Select @payment_desc     = payment_desc     from deleted
Insert into E_MallAudt values ('New site_available_on with id = ' + CAST(@Id as nvarchar(5)) + ' app_names = ' + @payment_desc    + ' is deleted at ' + CAST(GETDATE() as nvarchar(20)))
END

delete from Payments where payment_ID = 10;
select * from  Payments


--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------


create table Devices
(device_ID int not null primary key,
device_type varchar(50),
device_company_name varchar(50),
device_model varchar(50),
device_user_name varchar(50),
device_password int,
Admin_ID int foreign key references Admins(Admin_ID) On Delete Set NULL );

insert into Devices values(01,'mobile','samsung','note9','Ali',1122,01)
insert into Devices values(02,'mobile','iphone','promax','sufian',1332,02)
insert into Devices values(03,'laptop','chuwi','note8','Ahmed',4325,03)
insert into Devices values(04,'mobile','infinix','note9','Asad',5434,04)
insert into Devices values(05,'mobile','redmi','note10pro','Waqas',9755,05)
insert into Devices values(06,'mobile','samsung','note11','Ahsan',3543,06)
insert into Devices values(07,'mobile','oppo','note11','Eman',9875,07)
insert into Devices values(08,'laptop','dell','proxa','Anas',2455,08)
insert into Devices values(09,'mobile','samsung','galaxy','Raza',8978,09)
insert into Devices values(10,'mobile','redmi','note8pro','Zain',9875,10)
insert into Devices values(11,'mobile','intel','note9','hzaifa',1287,11)
insert into Devices values(12,'mobile','samsung','A70','Adel',5432,12)
insert into Devices values(13,'laptop','hp','note9','Emad',9878,13)
insert into Devices values(14,'mobile','samsung','note20','hassan',7854,14)
insert into Devices values(15,'mobile','infinix','zeroneo','Saqib',4253,15)
insert into Devices values(16,'mobile','samsung','S8','Abdullah',9087,16)
insert into Devices values(17,'mobile','redmi','note9S','Ambar',3454,17)
insert into Devices values(18,'mobile','samsung','note20','Tahir',4543,18)
insert into Devices values(19,'mobile','infinix','zero8i','Shakir',7543,19)
insert into Devices values(20,'mobile','samsung','S10edge','AbuBakkar',7857,20)
insert into Devices values(21,'laptop','dell','note9','Fahad',9987,21)
insert into Devices values(22,'mobile','samsung','note10','Ali',2443,22)
insert into Devices values(23,'mobile','redmi','9Tele','Ahmed',8907,23)
insert into Devices values(24,'mobile','samsung','note9','Waqas',8754,24)
insert into Devices values(25,'mobile','infinix','zero5G','Ahsan',3458,25)
insert into Devices values(26,'mobile','samsung','note12','Zain',9875,26)
insert into Devices values(27,'laptop','apple','macbook','Raza',1123,27)
insert into Devices values(28,'mobile','itel','vision7','Anas',1120,28)
insert into Devices values(29,'mobile','samsung','note10','sufian',2354,29)
insert into Devices values(30,'mobile','redmi','note11','Eman',1754,30)


----------------------------------------------------------------------------------------------- Queries On Device Table (35 Queries) --
----------------------------AND-------------------------------------
select* from Devices
where device_type =  'mobile' and device_company_name ='samsung' ;
select* from Devices
where device_type = 'laptop' and device_company_name = 'dell';
----------------------------OR-------------------------------------
select* from Devices
where device_type = 'mobile' or device_company_name = 'oppo' ;
select* from Devices
where device_type = 'laptop' or device_company_name = 'chuwi' ;
----------------------------NOT-------------------------------------
select* from Devices
where not device_type = 'mobile' ;
select* from Devices
where not device_type = 'laptop' ;
----------------------------LIKE-------------------------------------
select * from Devices
where device_company_name like 's%' ;
select * from Devices
where device_company_name like 'i%' ;
----------------------------IN-------------------------------------
select * from Devices
where device_company_name In ('samsung','iphone','redmi') ;
select * from Devices
where device_model In ('note9','note11','galaxy' ) ;
----------------------------BETWEEN-------------------------------------
select * from Devices
where device_ID between 5 And 20 ;
select * from Devices
where device_ID between 1 And 40 ;

-----------------------COUNT--------------------------
SELECT COUNT (device_password)device_password
FROM Devices;
-----------------------AVERAGE--------------------------
SELECT AVG (device_password)device_password
FROM Devices;
-----------------------SUM--------------------------
SELECT SUM (device_password)device_password
FROM Devices;
-----------------------MIN--------------------------
SELECT MIN (device_password)device_password
FROM Devices;
-----------------------MAX--------------------------
SELECT MAX (device_password)device_password
FROM Devices;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(device_password)device_password,COUNT(device_password)device_password
,SUM(device_password)device_password
FROM Devices
where device_password > 20
GROUP BY device_password
ORDER BY AVG(device_password)asc,COUNT(device_password),SUM(device_password)DESC;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(device_ID)device_ID,COUNT(device_ID)device_ID
,SUM(device_ID)device_ID
FROM Devices
where device_ID > 20
GROUP BY device_ID
ORDER BY AVG(device_ID)asc,COUNT(device_ID),SUM(device_ID)DESC;

------------------------Inner Join-----------------------------

SELECT Devices.device_ID, Invoices.invoice_amount
FROM Devices
INNER JOIN Invoices ON Devices.device_ID = Invoices.invoice_ID;

SELECT Devices.device_password, Invoices.invoice_billed_to
FROM Devices
INNER JOIN Invoices ON Devices.device_ID = Invoices.invoice_ID;

------------------------Left Join-----------------------------

SELECT Invoices.invoice_billed_to, Devices.device_ID
FROM Invoices
LEFT JOIN Devices ON Devices.device_ID = Invoices.invoice_ID;

SELECT Invoices.invoice_date, Devices.device_ID
FROM Invoices
LEFT JOIN Devices ON Devices.device_ID = Invoices.invoice_ID;

------------------------Right Join-----------------------------

SELECT Devices.device_ID, Invoices.invoice_billed_to, Invoices.invoice_amount
FROM Devices
RIGHT JOIN Invoices ON Devices.device_ID = Invoices.invoice_ID

SELECT Devices.device_company_name, Invoices.invoice_duedate, Invoices.invoice_amount
FROM Devices
RIGHT JOIN Invoices ON Devices.device_ID = Invoices.invoice_ID

------------------------Full Join-----------------------------

SELECT Invoices.invoice_billed_to, Devices.device_ID
FROM Invoices
CROSS JOIN Devices;

SELECT Invoices.invoice_no, Devices.device_ID
FROM Invoices
CROSS JOIN Devices;

----------Joins using where clause + order by, group by statement----------

SELECT Invoices.invoice_amount,COUNT(Devices.device_ID) AS product_price FROM Devices
LEFT JOIN Invoices ON Devices.device_ID = Invoices.invoice_ID
where device_ID > 10
GROUP BY invoice_amount
ORDER BY (invoice_amount);

SELECT Invoices.invoice_billed_to,COUNT(Devices.device_ID) AS product_price FROM Devices
LEFT JOIN Invoices ON Devices.device_ID = Invoices.invoice_ID
where device_ID > 10
GROUP BY invoice_billed_to
ORDER BY (invoice_billed_to);

SELECT Invoices.invoice_date,COUNT(Devices.device_ID) AS product_price FROM Devices
LEFT JOIN Invoices ON Devices.device_ID = Invoices.invoice_ID
where device_ID > 10
GROUP BY invoice_date
ORDER BY (invoice_date);

SELECT Invoices.invoice_duedate,COUNT(Devices.device_ID) AS product_price FROM Devices
LEFT JOIN Invoices ON Devices.device_ID = Invoices.invoice_ID
where device_ID > 10
GROUP BY invoice_duedate
ORDER BY (invoice_duedate);

-------------------------------------Triger For Insert----------------------------

create trigger trinsert_devices
ON Devices 
FOR INSERT 
AS 
BEGIN 
Declare @Id int 
Select @Id =  device_ID    from Inserted 
Insert into E_MallAudt values ('New user with id = ' + CAST(@Id as nvarchar(5)) + ' is added at ' + CAST(GETDATE() as nvarchar(20)))
END

insert into Devices(device_ID	 ,device_type   ,device_company_name     ,device_model    ,device_user_name  ,device_password   )
values(51,'mobile','samsung','S20','Furqan',4353)
select * from E_MallAudt

---------------------------Triger For Delete -------------------------------------

create trigger trdelete_devices
ON Devices
FOR delete
AS 
BEGIN 
Declare @Id int 
Select @Id = device_ID     from deleted
Declare @device_type    varchar(40) 
Select @device_type     = device_type      from deleted
Insert into E_MallAudt values ('New site_available_on with id = ' + CAST(@Id as nvarchar(5)) + ' app_names = ' + @device_type     + ' is deleted at ' + CAST(GETDATE() as nvarchar(20)))
END

delete from Devices where device_ID = 7;
select * from  Devices


--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------


create table Invoices
(invoice_no int primary key ,
invoice_ID int ,
invoice_billed_to varchar(25),
invoice_amount int,
invoice_date varchar(100) ,
invoice_duedate varchar(100));

insert into Invoices values(01,101,'Ali',100,'1/1/20','1/1/21')
insert into Invoices values(02,202,'sufian',200,'2/1/20','2/1/21')
insert into Invoices values(03,023,'Ahmed',300,'3/1/20','3/1/21')
insert into Invoices values(04,024,'Asad',400,'4/1/20','4/1/21')
insert into Invoices values(05,053,'Waqas',500,'5/1/20','5/1/21')
insert into Invoices values(06,064,'Ahsan',700,'7/1/20','7/1/21')
insert into Invoices values(07,075,'Eman',800,'8/1/20','8/1/21')
insert into Invoices values(08,088,'Anas',900,'9/1/20','9/1/21')
insert into Invoices values(09,097,'Raza',150,'10/1/20','10/1/21')
insert into Invoices values(10,107,'Zain',121,'11/1/20','11/1/21')
insert into Invoices values(11,119,'hzaifa',159,'12/1/20','12/1/21')
insert into Invoices values(12,127,'Adil',1253,'13/1/20','13/1/21')
insert into Invoices values(13,13,'Emad',233,'14/1/20','14/1/21')
insert into Invoices values(14,142,'hassan',2454,'15/1/20','15/1/21')
insert into Invoices values(15,151,'Saqib',2435,'17/1/20','17/1/21')
insert into Invoices values(16,16,'Abdullah',3457,'18/1/20','18/1/21')
insert into Invoices values(17,177,'Ambar',875,'19/1/20','19/1/21')
insert into Invoices values(18,183,'Tahir',2345,'20/1/20','20/1/21')
insert into Invoices values(19,194,'Shakir',987,'21/1/20','21/1/21')
insert into Invoices values(20,207,'AbuBakkar',5431,'22/1/20','22/1/21')
insert into Invoices values(21,218,'Fahad',2345,'23/1/20','23/1/21')
insert into Invoices values(22,228,'Ali',1234,'24/1/20','24/1/21')
insert into Invoices values(23,231,'Ahmed',75,'25/1/20','25/1/21')
insert into Invoices values(24,245,'Waqas',2345,'27/1/20','27/1/21')
insert into Invoices values(25,257,'Ahsan',753,'28/1/20','28/1/21')
insert into Invoices values(26,268,'Zain',234,'29/1/20','29/1/21')
insert into Invoices values(27,27,'Raza',875,'29/1/20','29/1/21')
insert into Invoices values(28,289,'Anas',439,'30/1/20','30/1/21')
insert into Invoices values(29,291,'sufian',99,'31/1/20','31/1/21')
insert into Invoices values(30,302,'Eman',543,'1/2/20','1/2/21')
 
---------------------------- Procedure for Insert -------------------------------------

Create Procedure spinsert_invoices
(@invoice_no int ,
@invoice_ID int ,
@invoice_billed_to varchar(25),
@invoice_amount int,
@invoice_date varchar(100) ,
@invoice_duedate varchar(100))
as Begin
insert into Invoices values(@invoice_no, @invoice_ID, @invoice_billed_to, @invoice_amount, @invoice_date, @invoice_duedate )
End

Execute spinsert_invoices  31,623,'Sonya',560,'23-6-2023','25-6-2023';

Select * from Invoices;

---------------------------- Procedure for Delete -------------------------------------

Create Procedure spdelete_invoices
@invoice_no int
as
Begin
delete from Invoices where invoice_no = @invoice_no ;
End

Execute spdelete_invoices 17;

Select * from Invoices;

---------------------------- Procedure for Update -------------------------------------

Create Procedure spupdate_invoices
(@invoice_no int ,
@invoice_ID int ,
@invoice_billed_to varchar(25),
@invoice_amount int,
@invoice_date varchar(100) ,
@invoice_duedate varchar(100))
as
Begin  
update Invoices
Set invoice_no = @invoice_no ,
invoice_ID = @invoice_ID ,
invoice_billed_to = @invoice_billed_to,
invoice_amount = @invoice_amount ,
invoice_date = @invoice_date ,
invoice_duedate = @invoice_duedate
where invoice_no = @invoice_no
End

Execute spupdate_invoices  27,623,'Sonya',560,'23-6-2023','25-6-2023';

Select * from Invoices;

----------------------------------------------------------------------------------------------- Queries On Invoice Table (35 Queries) --
----------------------------AND-------------------------------------
select* from Invoices
where invoice_billed_to =  'Ali' and invoice_ID =101 ;
select* from Invoices
where invoice_billed_to = 'Ahmed' and invoice_ID = 023;
----------------------------OR-------------------------------------
select* from Invoices
where invoice_billed_to = 'hassan' or invoice_ID = 177 ;
select* from Invoices
where invoice_billed_to = 'Abdullah' or invoice_ID = 183 ;
----------------------------NOT-------------------------------------
select* from Invoices
where not invoice_billed_to = 'Waqas' ;
select* from Invoices
where not invoice_billed_to = 'Zain' ;
----------------------------LIKE-------------------------------------
select * from Invoices
where invoice_billed_to like 'R%' ;
select * from Invoices
where invoice_billed_to like 'F%' ;
----------------------------IN-------------------------------------
select * from Invoices
where invoice_billed_to In ('Asad','Eman','Anas') ;
select * from Invoices
where invoice_amount In (200,500,2454 ) ;
----------------------------BETWEEN-------------------------------------
select * from Invoices
where invoice_amount between 100 And 800 ;
select * from Invoices
where invoice_amount between 1000 And 3000 ;

-----------------------COUNT--------------------------
SELECT COUNT (invoice_ID)invoice_ID
FROM Invoices;
-----------------------AVERAGE--------------------------
SELECT AVG (invoice_ID)invoice_ID
FROM Invoices;
-----------------------SUM--------------------------
SELECT SUM (invoice_ID)invoice_ID
FROM Invoices;
-----------------------MIN--------------------------
SELECT MIN (invoice_ID)invoice_ID
FROM Invoices;
-----------------------MAX--------------------------
SELECT MAX (invoice_ID)invoice_ID
FROM Invoices;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(invoice_amount)invoice_amount,COUNT(invoice_amount)invoice_amount
,SUM(invoice_amount)invoice_amount
FROM Invoices
where invoice_amount > 20
GROUP BY invoice_amount
ORDER BY AVG(invoice_amount)asc,COUNT(invoice_amount),SUM(invoice_amount)DESC;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(invoice_ID)invoice_ID,COUNT(invoice_ID)invoice_ID
,SUM(invoice_ID)invoice_ID
FROM Invoices
where invoice_ID > 20
GROUP BY invoice_ID
ORDER BY AVG(invoice_ID)asc,COUNT(invoice_ID),SUM(invoice_ID)DESC;

------------------------Inner Join-----------------------------

SELECT Invoices.invoice_ID, Products.product_availability
FROM Invoices
INNER JOIN Products ON Invoices.invoice_ID = Products.product_ID;

SELECT Invoices.invoice_no, Products.product_category
FROM Invoices
INNER JOIN Products ON Invoices.invoice_ID = Products.product_ID;

------------------------Left Join-----------------------------

SELECT Products.product_delete, Invoices.invoice_ID
FROM Products
LEFT JOIN Invoices ON Invoices.invoice_ID = Products.product_ID;

SELECT Products.product_name, Invoices.invoice_billed_to
FROM Products
LEFT JOIN Invoices ON Invoices.invoice_ID = Products.product_ID;

------------------------Right Join-----------------------------

SELECT Invoices.invoice_ID, Products.product_availability, Products.product_category
FROM Invoices
RIGHT JOIN Products ON Invoices.invoice_ID = Products.product_ID

SELECT Invoices.invoice_ID, Products.product_delete, Products.product_name
FROM Invoices
RIGHT JOIN Products ON Invoices.invoice_ID = Products.product_ID

------------------------Full Join-----------------------------

SELECT Products.product_price, Invoices.invoice_ID
FROM Products
CROSS JOIN Invoices;

SELECT Products.product_delete, Invoices.invoice_ID
FROM Products
CROSS JOIN Invoices;

----------Joins using where clause + order by, group by statement----------

SELECT Invoices.invoice_amount,COUNT(Products.product_ID) AS product_ID FROM Products
LEFT JOIN Invoices ON Products.product_ID = Invoices.invoice_ID
where product_ID > 10
GROUP BY invoice_amount
ORDER BY (invoice_amount);

SELECT Invoices.invoice_billed_to,COUNT(Products.product_ID) AS product_ID FROM Products
LEFT JOIN Invoices ON Products.product_ID = Invoices.invoice_ID
where product_ID > 10
GROUP BY invoice_billed_to
ORDER BY (invoice_billed_to);

SELECT Invoices.invoice_date,COUNT(Products.product_ID) AS product_ID FROM Products
LEFT JOIN Invoices ON Products.product_ID = Invoices.invoice_ID
where product_ID > 10
GROUP BY invoice_date
ORDER BY (invoice_date);

SELECT Invoices.invoice_duedate,COUNT(Products.product_ID) AS product_ID FROM Products
LEFT JOIN Invoices ON Products.product_ID = Invoices.invoice_ID
where product_ID > 10
GROUP BY invoice_duedate
ORDER BY (invoice_duedate);

-------------------------------------Triger For Insert----------------------------

create trigger trinsert_invoices
ON Invoices 
FOR INSERT 
AS 
BEGIN 
Declare @Id int 
Select @Id =  invoice_no     from Inserted 
Insert into E_MallAudt values ('New user with id = ' + CAST(@Id as nvarchar(5)) + ' is added at ' + CAST(GETDATE() as nvarchar(20)))
END

insert into Invoices(invoice_no 	 ,invoice_ID    ,invoice_billed_to      ,invoice_amount     ,invoice_date  ,invoice_duedate    )
values(51,508,'Furqan',950,'2020/02/23',23/2/21)
select * from E_MallAudt

---------------------------Triger For Delete -------------------------------------

create trigger trdelete_invoices
ON Invoices
FOR delete
AS 
BEGIN 
Declare @Id int 
Select @Id = invoice_no      from deleted
Declare @invoice_billed_to     varchar(40) 
Select @invoice_billed_to      = invoice_billed_to       from deleted
Insert into E_MallAudt values ('New site_available_on with id = ' + CAST(@Id as nvarchar(5)) + ' app_names = ' + @invoice_billed_to      + ' is deleted at ' + CAST(GETDATE() as nvarchar(20)))
END

delete from Invoices where invoice_no  = 12;
select * from  Invoices


--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------

create table Products
(product_ID int not null primary key,
product_name varchar(100),
product_category varchar(100),
product_delete varchar(100),
product_availability varchar(100),
product_price varchar(100) );

insert into Products values(01,'perfume','clothing','delete','Yes','500Rs')
insert into Products values(02,'water bottle','kitchenware','delete','Yes','40Rs')
insert into Products values(03,'coke','eatables','delete','Yes','50Rs')
insert into Products values(04,'sprite','eatables','delete','Yes','50Rs')
insert into Products values(05,'lays chips','eatables','delete','Yes','50Rs')
insert into Products values(06,'mango juice','eatables','delete','Yes','30Rs')
insert into Products values(07,'shoe polish','tools','delete','Yes','300Rs')
insert into Products values(08,'tooth paste','clothing','delete','Yes','234Rs')
insert into Products values(09,'tooth brush','clothing','delete','Yes','553Rs')
insert into Products values(10,'candy','eatables','delete','Yes','2Rs')
insert into Products values(11,'biscuit','eatables','delete','Yes','25Rs')
insert into Products values(12,'mortein spray','tools','delete','Yes','600Rs')
insert into Products values(13,'spaghetti','kitchenware','delete','Yes','400Rs')
insert into Products values(14,'macroni','kitchenware','delete','Yes','574Rs')
insert into Products values(15,'cornetto','eatables','delete','Yes','574Rs')
insert into Products values(16,'ice cream','eatables','delete','Yes','50Rs')
insert into Products values(17,'body spray','clothing','delete','Yes','5089Rs')
insert into Products values(18,'lolly pop','eatables','delete','Yes','300Rs')
insert into Products values(19,'tang','kitchenware','delete','Yes','700Rs')
insert into Products values(20,'jameshiri','kitchenware','delete','Yes','100Rs')
insert into Products values(21,'nescafe','kitchenware','delete','Yes','500Rs')
insert into Products values(22,'everyday milk','kitchenware','delete','Yes','200Rs')
insert into Products values(23,'milk pack','kitchenware','delete','Yes','100Rs')
insert into Products values(24,'olpers cream','kitchenware','delete','Yes','100Rs')
insert into Products values(25,'olpers milk','kitchenware','delete','Yes','100Rs')
insert into Products values(26,'cocomo','eatables','delete','Yes','50Rs')
insert into Products values(27,'cigarette','drugs','delete','Yes','400Rs')
insert into Products values(28,'cigar','drugs','delete','Yes','600Rs')
insert into Products values(29,'face wash','clothing','delete','Yes','100Rs')
insert into Products values(30,'k&ns nuggets','eatables','delete','Yes','800Rs')


----------------------------------------------------------------------------------------------- Queries On Products Table (35 Queries) --
----------------------------AND-------------------------------------
select* from Products
where product_name =  'perfume' and product_availability ='Yes' ;
select* from Products
where product_name = 'mango' and product_availability = 'Yes';
----------------------------OR-------------------------------------
select* from Products
where product_name = 'candy' or product_availability = 'Yes' ;
select* from Products
where product_name = 'tang' or product_availability = 'Yes' ;
----------------------------NOT-------------------------------------
select* from Products
where not product_name = 'biscuit' ;
select* from Products
where not product_name = 'cigarette' ;
----------------------------LIKE-------------------------------------
select * from Products
where product_name like 'p%' ;
select * from Products
where product_name like 'o%' ;
----------------------------IN-------------------------------------
select * from Products
where product_name In ('mango juice','spaghetti','cornetto') ;
select * from Products
where product_category In ('eatables','tools','clothing' ) ;
----------------------------BETWEEN-------------------------------------
select * from Products
where product_ID between 01 And 20 ;
select * from Products
where product_ID between 28 And 35 ;

-----------------------COUNT--------------------------
SELECT COUNT (product_price)product_price
FROM Products;
-----------------------AVERAGE--------------------------
SELECT AVG (product_ID)product_ID
FROM Products;
-----------------------SUM--------------------------
SELECT SUM (product_ID)product_ID
FROM Products;
-----------------------MIN--------------------------
SELECT MIN (product_ID)product_ID
FROM Products;
-----------------------MAX--------------------------
SELECT MAX (product_ID)product_ID
FROM Products;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(product_ID)product_ID,COUNT(product_ID)product_ID
,SUM(product_ID)product_ID
FROM Products
where product_ID > 20
GROUP BY product_ID
ORDER BY AVG(product_ID)asc,COUNT(product_ID),SUM(product_ID)DESC;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(product_ID)product_ID,COUNT(product_ID)product_ID
,SUM(product_ID)product_ID
FROM Products
where product_ID > 20
GROUP BY product_ID
ORDER BY AVG(product_ID)asc,COUNT(product_ID),SUM(product_ID)DESC;

------------------------Inner Join-----------------------------

SELECT Products.product_ID, Carts.discount_coupon
FROM Products
INNER JOIN Carts ON Products.product_ID = Carts.cart_ID;

SELECT Products.product_ID, Carts.Products
FROM Products
INNER JOIN Carts ON Products.product_ID = Carts.cart_ID;

------------------------Left Join-----------------------------

SELECT Carts.discount_coupon, Products.product_availability
FROM Carts
LEFT JOIN Products ON Products.product_ID = Carts.cart_ID;

SELECT Carts.product_ID, Products.product_category
FROM Carts
LEFT JOIN Products ON Products.product_ID = Carts.cart_ID;

------------------------Right Join-----------------------------

SELECT Products.product_ID, Carts.discount_coupon, Carts.product_price
FROM Products
RIGHT JOIN Carts ON Products.product_ID = Carts.cart_ID

SELECT Products.product_name, Carts.discount_coupon, Carts.product_price
FROM Products
RIGHT JOIN Carts ON Products.product_ID = Carts.cart_ID

------------------------Full Join-----------------------------

SELECT Carts.discount_coupon, Products.product_ID
FROM Carts
CROSS JOIN Products;

SELECT Carts.discount_coupon, Products.product_ID
FROM Carts
CROSS JOIN Products;

----------Joins using where clause + order by, group by statement----------

SELECT Products.product_availability,COUNT(Carts.cart_ID) AS product_price FROM Carts
LEFT JOIN Products ON Carts.cart_ID = Products.product_ID
where cart_ID > 10
GROUP BY product_availability
ORDER BY (product_availability);

SELECT Products.product_category,COUNT(Carts.cart_ID) AS product_price FROM Carts
LEFT JOIN Products ON Carts.cart_ID = Products.product_ID
where cart_ID > 10
GROUP BY product_category
ORDER BY (product_category);

SELECT Products.product_delete,COUNT(Carts.cart_ID) AS product_price FROM Carts
LEFT JOIN Products ON Carts.cart_ID = Products.product_ID
where cart_ID > 10
GROUP BY product_delete
ORDER BY (product_delete);

SELECT Products.product_name,COUNT(Carts.cart_ID) AS product_price FROM Carts
LEFT JOIN Products ON Carts.cart_ID = Products.product_ID
where cart_ID > 10
GROUP BY product_name
ORDER BY (product_name);

-------------------------------------Triger For Insert----------------------------

create trigger trinsert_products
ON Products 
FOR INSERT 
AS 
BEGIN 
Declare @Id int 
Select @Id =  product_ID      from Inserted 
Insert into E_MallAudt values ('New user with id = ' + CAST(@Id as nvarchar(5)) + ' is added at ' + CAST(GETDATE() as nvarchar(20)))
END

insert into Products(product_ID  	 ,product_name     ,product_category       ,product_delete      ,product_availability  ,product_price     )
 values(51,'thorray aur pampers','clothing','delete','Yes','500Rs')
 select * from E_MallAudt

---------------------------Triger For Delete -------------------------------------

create trigger trdelete_products
ON Products
FOR delete
AS 
BEGIN 
Declare @Id int 
Select @Id = product_ID       from deleted
Declare @product_name     varchar(40) 
Select @product_name      = product_name        from deleted
Insert into E_MallAudt values ('New site_available_on with id = ' + CAST(@Id as nvarchar(5)) + ' app_names = ' + @product_name       + ' is deleted at ' + CAST(GETDATE() as nvarchar(20)))
END

delete from Products where product_ID   = 20;
select * from  Products


--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------


create table Carts 
(cart_ID int not null primary key,
inventory_amount int,
Products varchar(25),
product_price varchar(25),  
discount_coupon varchar(25),
product_ID int foreign key references Products(product_ID) On Delete Set NULL );

insert into Carts values(1,12,'water bottle','40Rs','Available',01)
insert into Carts values(02,13,'lays chips','50Rs','Available',02)
insert into Carts values(03,32,'water bottle','40Rs','Available',03)
insert into Carts values(04,64,'shoe polish','300RS','Available',04)
insert into Carts values(05,13,'tooth brush','553Rs','Available',05)
insert into Carts values(06,36,'perfume','500Rs','Available',06)
insert into Carts values(07,65,'show polish','300Rs','Available',07)
insert into Carts values(08,0,'tooth brush','553Rs','Available',08)
insert into Carts values(09,12,'candy','2RS','Available',09)
insert into Carts values(10,0,'candy','2Rs','Available',10)
insert into Carts values(11,12,'jameshiri','100Rs','Available',11)
insert into Carts values(12,45,'jameshiri','100Rs','Available',12)
insert into Carts values(13,23,'fanta','200Rs','Available',13)
insert into Carts values(14,0,'fanta','200Rs','Available',14)
insert into Carts values(15,0,'jameshiri','100Rs','Available',15)
insert into Carts values(16,23,'lays chips','50Rs','Available',16)
insert into Carts values(17,33,'shoe polish','300rs','Available',17)
insert into Carts values(18,64,'coke','50Rs','Available',18)
insert into Carts values(19,78,'perfume','500rs','Available',19)
insert into Carts values(20,23,'shoe polish','300Rs','Available',20)
insert into Carts values(21,22,'tooth brush','553Rs','Available',21)
insert into Carts values(22,84,'sprite','50Rs','Available',22)
insert into Carts values(23,12,'water bottle','40Rs','Available',23)
insert into Carts values(24,0,'lays chips','50Rs','Available',24)
insert into Carts values(25,24,'perfume','500Rs','Available',25)
insert into Carts values(26,1,'coke','50Rs','Available',26)
insert into Carts values(27,4,'sprite','50Rs','Available',27)
insert into Carts values(28,8,'sprite','50Rs','Available',28)
insert into Carts values(29,6,'tooth paste','234Rs','Available',29)
insert into Carts values(30,3,'milk pack','100Rs','Available',30)

---------------------------- Procedure for Insert -------------------------------------

Create Procedure spinsert_carts
(@cart_ID int ,
@inventory_amount int,
@Products varchar(25),
@product_price varchar(25),  
@discount_coupon varchar(25),
@product_ID int)
as Begin
insert into Carts values(@cart_ID, @inventory_amount, @Products, @product_price, @discount_coupon, @product_ID )
End

Execute spinsert_carts  23,3,'Mint Margaretta','60Rs','Available',23 ;

Select * from Carts;

---------------------------- Procedure for Delete -------------------------------------

Create Procedure spdelete_carts
@cart_ID int
as
Begin
delete from Carts where cart_ID = @cart_ID ;
End

Execute spdelete_carts 17;

Select * from Carts;

---------------------------- Procedure for Update -------------------------------------

Create Procedure spupdate_carts
(@cart_ID int ,
@inventory_amount int,
@Products varchar(25),
@product_price varchar(25),  
@discount_coupon varchar(25),
@product_ID int)
as
Begin  
update Carts
Set cart_ID = @cart_ID ,
inventory_amount = @inventory_amount ,
Products = @Products ,
product_price = @product_price ,  
discount_coupon = @discount_coupon ,
product_ID = @product_ID
where cart_ID = @cart_ID
End

Execute spupdate_carts  23,4,'Ice Cream Shake','150Rs','Available',23;

Select * from Carts;


----------------------------------------------------------------------------------------------- Queries On Carts Table (35 Queries) --
----------------------------AND-------------------------------------
select* from Carts
where Products =  'water bottle' and discount_coupon ='Available' ;
select* from Carts
where Products = 'tooth brush' and discount_coupon = 'Available';
----------------------------OR-------------------------------------
select* from Carts
where Products = 'perfume' or discount_coupon = 'Available' ;
select* from Carts
where Products = 'sprite' or discount_coupon = 'Available' ;
----------------------------NOT-------------------------------------
select* from Carts
where not Products = 'water bottle' ;
select* from Carts
where not Products = 'candy' ;
----------------------------LIKE-------------------------------------
select * from Carts
where Products like 'w%' ;
select * from Carts
where Products like 't%' ;
----------------------------IN-------------------------------------
select * from Carts
where Products In ('mango juice','spaghetti','cornetto') ;
select * from Carts
where product_price In ('40Rs','300RS','100Rs' ) ;
----------------------------BETWEEN-------------------------------------
select * from Carts
where inventory_amount between 10 And 60 ;
select * from Carts
where inventory_amount between 60 And 80 ;

-----------------------COUNT--------------------------
SELECT COUNT (discount_coupon)discount_coupon
FROM Carts;
SELECT COUNT (product_ID)product_ID
FROM Carts;
SELECT COUNT (cart_ID)cart_ID
FROM Carts;
-----------------------AVERAGE--------------------------
SELECT AVG (inventory_amount)inventory_amount
FROM Carts;
SELECT AVG (product_ID)product_ID
FROM Carts;
SELECT AVG (cart_ID)cart_ID
FROM Carts;
-----------------------SUM--------------------------
SELECT SUM (inventory_amount)inventory_amount
FROM Carts;
SELECT SUM (product_ID)product_ID
FROM Carts;
SELECT SUM (inventory_amount)cart_ID
FROM Carts;
-----------------------MIN--------------------------
SELECT MIN (inventory_amount)inventory_amount
FROM Carts;
SELECT MIN (product_ID)product_ID
FROM Carts;
SELECT MIN (cart_ID)cart_ID
FROM Carts;
-----------------------MAX--------------------------
SELECT MAX (inventory_amount)inventory_amount
FROM Carts;
SELECT MAX (product_ID)product_ID
FROM Carts;
SELECT MAX (cart_ID)cart_ID
FROM Carts;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(inventory_amount)inventory_amount,COUNT(inventory_amount)inventory_amount
,SUM(inventory_amount)inventory_amount
FROM Carts
where inventory_amount > 20
GROUP BY inventory_amount
ORDER BY AVG(inventory_amount)asc,COUNT(inventory_amount),SUM(inventory_amount)DESC;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(cart_ID)cart_ID,COUNT(cart_ID)cart_ID
,SUM(cart_ID)cart_ID
FROM Carts
where cart_ID > 20
GROUP BY cart_ID
ORDER BY AVG(cart_ID)asc,COUNT(cart_ID),SUM(cart_ID)DESC;

------------------------Inner Join-----------------------------

SELECT Carts.cart_ID, Sales.Sale_Amount
FROM Carts
INNER JOIN Sales ON Carts.cart_ID = Sales.Sale_ID;

SELECT Carts.cart_ID, Sales.Sale_Checks
FROM Carts
INNER JOIN Sales ON Carts.cart_ID = Sales.Sale_ID;

------------------------Left Join-----------------------------

SELECT Sales.Sale_customer_ID, Carts.Products
FROM Sales
LEFT JOIN Carts ON Carts.cart_ID = Sales.Sale_ID;

SELECT Sales.Sale_customer_ID, Carts.discount_coupon
FROM Sales
LEFT JOIN Carts ON Carts.cart_ID = Sales.Sale_ID;

------------------------Right Join-----------------------------

SELECT Carts.cart_ID, Sales.Sale_Description, Sales.Sale_customer_ID
FROM Carts
RIGHT JOIN Sales ON Carts.cart_ID = Sales.Sale_ID

SELECT Carts.product_price, Sales.Sale_Checks, Sales.Sale_customer_ID
FROM Carts
RIGHT JOIN Sales ON Carts.cart_ID = Sales.Sale_ID

------------------------Full Join-----------------------------

SELECT Sales.Sale_Checks, Carts.product_ID
FROM Sales
CROSS JOIN Carts;

SELECT Sales.Sale_Checks, Carts.product_price
FROM Sales
CROSS JOIN Carts;

----------Joins using where clause + order by, group by statement----------

SELECT Sales.Sale_Type,COUNT(Carts.cart_ID) AS product_price FROM Carts
LEFT JOIN Sales ON Carts.cart_ID = Sales.Sale_ID
where cart_ID > 10
GROUP BY Sale_Type
ORDER BY (Sale_Type);

SELECT Sales.Sale_Type,COUNT(Carts.cart_ID) AS product_price FROM Carts
LEFT JOIN Sales ON Carts.cart_ID = Sales.Sale_ID
where cart_ID > 10
GROUP BY Sale_Type
ORDER BY (Sale_Type);

SELECT Sales.Sale_Checks,COUNT(Carts.cart_ID) AS discount_coupon FROM Carts
LEFT JOIN Sales ON Carts.cart_ID = Sales.Sale_ID
where cart_ID > 10
GROUP BY Sale_Checks
ORDER BY (Sale_Checks);

SELECT Sales.Sale_Checks,COUNT(Carts.cart_ID) AS discount_coupon FROM Carts
LEFT JOIN Sales ON Carts.cart_ID = Sales.Sale_ID
where cart_ID > 10
GROUP BY Sale_Checks
ORDER BY (Sale_Checks);

-------------------------------------Triger For Insert----------------------------

create trigger trinsert_carts
ON Carts 
FOR INSERT 
AS 
BEGIN 
Declare @Id int 
Select @Id =  cart_ID       from Inserted 
Insert into E_MallAudt values ('New user with id = ' + CAST(@Id as nvarchar(5)) + ' is added at ' + CAST(GETDATE() as nvarchar(20)))
END

insert into Carts(cart_ID   	 ,inventory_amount       ,Products        ,product_price       ,discount_coupon      )
values(51,32,'coke','50Rs','Available')
select * from E_MallAudt

---------------------------Triger For Delete -------------------------------------

create trigger trdelete_carts
ON Carts
FOR delete
AS 
BEGIN 
Declare @Id int 
Select @Id = cart_ID        from deleted
Declare @inventory_amount     varchar(40) 
Select @inventory_amount      = inventory_amount         from deleted
Insert into E_MallAudt values ('New site_available_on with id = ' + CAST(@Id as nvarchar(5)) + ' app_names = ' + @inventory_amount        + ' is deleted at ' + CAST(GETDATE() as nvarchar(20)))
END

delete from Carts where cart_ID    = 20;
select * from  Carts


--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------


create table Sales
(Sale_ID int Not Null primary key,
Sale_customer_ID int ,
Sale_Amount int,
Sale_Type varchar(100),
Sale_Description varchar(100),
Sale_Checks varchar(100),
product_ID int foreign key references Products(product_ID) On Delete Set NULL );

insert into Sales values(01,12,900,'Transaction Selling','40Rs','Available',01)
insert into Sales values(02,13,500,'Relationship Selling','50Rs','Available',02)
insert into Sales values(03,32,700,'Solution Selling','40Rs','Available',03)
insert into Sales values(04,64,400,'Partnership Selling.','300RS','Available',04)
insert into Sales values(05,13,200,'Transaction Selling','553Rs','Available',05)
insert into Sales values(06,36,600,'Relationship Selling','500Rs','Available',06)
insert into Sales values(07,65,100,'Solution Selling','300Rs','Available',07)
insert into Sales values(08,0,800,'Partnership Selling','553Rs','Available',08)
insert into Sales values(09,12,600,'Transaction Selling','2RS','Available',09)
insert into Sales values(10,0,1100,'Partnership Selling','2Rs','Available',10)
insert into Sales values(11,12,1200,'Transaction Selling','100Rs','Available',11)
insert into Sales values(12,45,1600,'Partnership Selling','100Rs','Available',12)
insert into Sales values(13,23,3100,'Solution Selling','200Rs','Available',13)
insert into Sales values(14,0,1500,'Partnership Selling','200Rs','Available',14)
insert into Sales values(15,0,1000,'Solution Selling','100Rs','Available',15)
insert into Sales values(16,23,4000,'Partnership Selling','50Rs','Available',16)
insert into Sales values(17,33,100,'Solution Selling','300rs','Available',17)
insert into Sales values(18,64,600,'Transaction Selling','50Rs','Available',18)
insert into Sales values(19,78,450,'Solution Selling','500rs','Available',19)
insert into Sales values(20,23,750,'Transaction Selling','300Rs','Available',20)
insert into Sales values(21,22,800,'Solution Selling','553Rs','Available',21)
insert into Sales values(22,84,400,'Transaction Selling','50Rs','Available',22)
insert into Sales values(23,12,500,'Partnership Selling','40Rs','Available',23)
insert into Sales values(24,0,800,'Transaction Selling','50Rs','Available',24)
insert into Sales values(25,24,700,'Partnership Selling','500Rs','Available',25)
insert into Sales values(26,1,900,'Transaction Selling','50Rs','Available',26)
insert into Sales values(27,4,600,'Partnership Selling','50Rs','Available',27)
insert into Sales values(28,8,700,'Transaction Selling','50Rs','Available',28)
insert into Sales values(29,6,600,'Partnership Selling','234Rs','Available',29)
insert into Sales values(30,3,300,'Transaction Selling','100Rs','Available',30)


----------------------------------------------------------------------------------------------- Queries On Sale Table (35 Queries) --
----------------------------AND-------------------------------------
select Sale_Type,Sale_Description  from Sales
where Sale_Type =  'Transaction Selling' and Sale_Description ='40Rs' ;
select Sale_Type,Sale_Description from Sales
where Sale_Type = 'Partnership Selling' and Sale_Description = '553Rs';
----------------------------OR-------------------------------------
select Sale_Type,Sale_Description from Sales
where Sale_Type = 'Solution Selling' or Sale_Description = 'Available' ;
select Sale_Type,Sale_Description from Sales
where Sale_Type = 'Partnership Selling' or Sale_Description = 'Available' ;
----------------------------NOT-------------------------------------
select* from Sales
where not Sale_Type = 'Partnership Selling' ;
select* from Sales
where not Sale_Type = 'Solution Selling' ;
----------------------------LIKE-------------------------------------
select * from Sales
where Sale_Type like 'T%' ;
select * from Sales
where Sale_Type like 'R%' ;
----------------------------IN-------------------------------------
select * from Sales
where Sale_Type  In ('Relationship Selling','Partnership Selling.','Solution Selling') ;
select * from Sales
where Sale_Description In ('40Rs','300RS','100Rs' ) ;
----------------------------BETWEEN-------------------------------------
select * from Sales
where Sale_customer_ID between 10 And 60 ;
select * from Sales
where Sale_Amount between 1000 And 1500 ;

-----------------------COUNT--------------------------
SELECT COUNT (Sale_customer_ID)Sale_customer_ID
FROM Sales;
SELECT COUNT (Sale_customer_ID)Sale_customer_ID
FROM Sales;
SELECT COUNT (Sale_customer_ID)Sale_customer_ID
FROM Sales;
-----------------------AVERAGE--------------------------
SELECT AVG (Sale_Amount)Sale_Amount
FROM Sales;
SELECT AVG (Sale_Amount)Sale_Amount
FROM Sales;
SELECT AVG (Sale_Amount)Sale_Amount
FROM Sales;
-----------------------SUM--------------------------
SELECT SUM (Sale_ID)Sale_ID
FROM Sales;
SELECT SUM (Sale_ID)Sale_ID
FROM Sales;
SELECT SUM (Sale_ID)Sale_ID
FROM Sales;
-----------------------MIN--------------------------
SELECT MIN (Sale_Amount)Sale_Amount
FROM Sales;
SELECT MIN (Sale_Amount)Sale_Amount
FROM Sales;
SELECT MIN (Sale_Amount)Sale_Amount
FROM Sales;
-----------------------MAX--------------------------
SELECT MAX (Sale_Amount)Sale_Amount
FROM Sales;
SELECT MAX (Sale_Amount)Sale_Amount
FROM Sales;
SELECT MAX (Sale_Amount)Sale_Amount
FROM Sales;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(Sale_customer_ID)Sale_customer_ID,COUNT(Sale_customer_ID)Sale_customer_ID
,SUM(Sale_customer_ID)Sale_customer_ID
FROM Sales
where Sale_customer_ID > 20
GROUP BY Sale_customer_ID
ORDER BY AVG(Sale_customer_ID)asc,COUNT(Sale_customer_ID),SUM(Sale_customer_ID)DESC;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(Sale_customer_ID)Sale_customer_ID,COUNT(Sale_customer_ID)Sale_customer_ID
,SUM(Sale_customer_ID)Sale_customer_ID
FROM Sales
where Sale_customer_ID > 20
GROUP BY Sale_customer_ID
ORDER BY AVG(Sale_customer_ID)asc,COUNT(Sale_customer_ID),SUM(Sale_customer_ID)DESC;

------------------------Inner Join-----------------------------

SELECT Sales.Sale_ID, Stocks.Stock_Description
FROM Sales
INNER JOIN Stocks ON Sales.Sale_ID = Stocks.stock_ID;

SELECT Sales.Sale_ID, Stocks.Stock_NO
FROM Sales
INNER JOIN Stocks ON Sales.Sale_ID = Stocks.stock_ID;

SELECT Sales.Sale_ID, Stocks.Stock_Delete
FROM Sales
INNER JOIN Stocks ON Sales.Sale_ID = Stocks.stock_ID;

------------------------Left Join-----------------------------

SELECT Stocks.Stock_Description, Sales.Sale_ID
FROM Stocks
LEFT JOIN Sales ON Sales.Sale_ID = Stocks.stock_ID;

SELECT Stocks.Stock_Delete, Sales.Sale_ID
FROM Stocks
LEFT JOIN Sales ON Sales.Sale_ID = Stocks.stock_ID;

SELECT Stocks.Stock_Type, Sales.Sale_ID
FROM Stocks
LEFT JOIN Sales ON Sales.Sale_ID = Stocks.stock_ID;

------------------------Right Join-----------------------------

SELECT Sales.Sale_ID, Stocks.Stock_Item, Stocks.Stock_NO
FROM Sales
RIGHT JOIN Stocks ON Sales.Sale_ID = Stocks.stock_ID

SELECT Sales.Sale_Amount, Stocks.Stock_Item, Stocks.Stock_NO
FROM Sales
RIGHT JOIN Stocks ON Sales.Sale_ID = Stocks.stock_ID

SELECT Sales.Sale_Checks, Stocks.Stock_Type, Stocks.Stock_NO
FROM Sales
RIGHT JOIN Stocks ON Sales.Sale_ID = Stocks.stock_ID

------------------------Full Join-----------------------------

SELECT Stocks.Stock_Description, Sales.Sale_ID
FROM Stocks
CROSS JOIN Sales;

SELECT Stocks.Stock_Item, Sales.Sale_ID
FROM Stocks
CROSS JOIN Sales;

----------Joins using where clause + order by, group by statement----------

SELECT Sales.Sale_Type,COUNT(Stocks.stock_ID) AS stock_ID FROM Stocks
LEFT JOIN Sales ON Stocks.stock_ID = Sales.Sale_ID
where stock_ID > 10
GROUP BY Sale_Type
ORDER BY (Sale_Type);

SELECT Sales.Sale_Description,COUNT(Stocks.stock_ID) AS stock_ID FROM Stocks
LEFT JOIN Sales ON Stocks.stock_ID = Sales.Sale_ID
where stock_ID > 10
GROUP BY Sale_Description
ORDER BY (Sale_Description);

SELECT Sales.Sale_Description,COUNT(Stocks.stock_ID) AS stock_ID FROM Stocks
LEFT JOIN Sales ON Stocks.stock_ID = Sales.Sale_ID
where stock_ID > 10
GROUP BY Sale_Description
ORDER BY (Sale_Description);

SELECT Sales.Sale_Amount,COUNT(Stocks.stock_ID) AS stock_ID FROM Stocks
LEFT JOIN Sales ON Stocks.stock_ID = Sales.Sale_ID
where stock_ID > 10
GROUP BY Sale_Amount
ORDER BY (Sale_Amount);

SELECT Sales.Sale_Checks,COUNT(Stocks.stock_ID) AS stock_ID FROM Stocks
LEFT JOIN Sales ON Stocks.stock_ID = Sales.Sale_ID
where stock_ID > 10
GROUP BY Sale_Checks
ORDER BY (Sale_Checks);


--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------


create table Stocks
(stock_ID int Not Null primary key,
Stock_Item int ,
Stock_Type varchar(25),
Stock_Description varchar(100),
Stock_NO varchar(100),
Stock_Delete varchar(100),
product_ID int foreign key references Products(product_ID) On Delete Set NULL );

insert into Stocks values(01,12,'Penny Stocks','Common Stock ',15,'Deleted',01)
insert into Stocks values(02,13,'Growth Stocks','Common Stock ',14,'Available',02)
insert into Stocks values(03,32,'Defensive Stocks','Common Stock',48,'Available',03)
insert into Stocks values(04,64,'Speculative Stocks','Common Stock',25,'Deleted',04)
insert into Stocks values(05,13,'Value Stocks','Common Stock ',48,'Available',05)
insert into Stocks values(06,36,'Penny Stocks','Common Stock ',15,'Deleted',06)
insert into Stocks values(07,65,'Growth Stocks','Common Stock',14,'Deleted',07)
insert into Stocks values(08,0,'Defensive Stocks','Common Stock',1,'Deleted',08)
insert into Stocks values(09,12,'Speculative Stocks','Common Stock',2,'Deleted',09)
insert into Stocks values(10,0,'Value Stocks','Common Stock ',3,'Available',10)
insert into Stocks values(11,12,'Penny Stocks','Common Stock ',4,'Available',11)
insert into Stocks values(12,45,'Growth Stocks','Common Stock  ',5,'Deleted',12)
insert into Stocks values(13,23,'Defensive Stocks','Common Stock  ',7,'Available',13)
insert into Stocks values(14,0,'Speculative Stocks','Common Stock  ',6,'Available',14)
insert into Stocks values(15,0,'Value Stocks','Common Stock  ',8,'Available',15)
insert into Stocks values(16,23,'Penny Stocks','Preferred Stock  ',9,'Deleted',16)
insert into Stocks values(17,33,'Growth Stocks','Preferred Stock  ',2,'Available',17)
insert into Stocks values(18,64,'Defensive Stocks','Preferred Stock  ',1,'Deleted',18)
insert into Stocks values(19,78,'Speculative Stocks','Preferred Stock  ',3,'Available',19)
insert into Stocks values(20,23,'Value Stocks','Preferred Stock  ',4,'Available',20)
insert into Stocks values(21,22,'Penny Stocks','Preferred Stock  ',5,'Deleted',21)
insert into Stocks values(22,84,'Growth Stocks','Preferred Stock ',7,'Available',22)
insert into Stocks values(23,12,'Defensive Stocks','Preferred Stock  ',6,'Available',23)
insert into Stocks values(24,0,'Speculative Stocks','Preferred Stock Selling',8,'Deleted',24)
insert into Stocks values(25,24,'Value Stocks','Preferred Stock  ',9,'Available',25)
insert into Stocks values(26,1,'Penny Stocks','Preferred Stock  ',10,'Available',26)
insert into Stocks values(27,4,'Growth Stocks','Preferred Stock  ',21,'Deleted',27)
insert into Stocks values(28,8,'Defensive Stocks','Preferred Stock  ',25,'Available',28)
insert into Stocks values(29,6,'Speculative Stocks','Preferred Stock  ',22,'Available',29)
insert into Stocks values(30,3,'Value Stocks','Preferred Stock ',23,'Deleted',30)


----------------------------------------------------------------------------------------------- Queries On Stock Table (55 Queries) --
----------------------------AND-------------------------------------
select Stock_Type,Stock_Description  from Stocks
where Stock_Type =  'Penny Stocks' and Stock_Description ='Common Stock' ;

select Stock_Type,Stock_Description from Stocks
where Stock_Type = 'Growth Stocks' and Stock_Description = 'Common Stock';

select Stock_Type,Stock_Description  from Stocks
where Stock_Type =  'Defensive Stocks' and Stock_Description ='Preferred Stock' ;

select Stock_Type,Stock_Description from Stocks
where Stock_Type = 'Speculative Stocks' and Stock_Description = 'Preferred Stock';
----------------------------OR-------------------------------------
select Stock_Type,Stock_Description from Stocks
where Stock_Type = 'Growth Stocks' or Stock_Description = 'Common Stock' ;

select Stock_Type,Stock_Description from Stocks
where Stock_Type = 'Partnership Selling' or Stock_Description = 'Common Stock' ;

select Stock_Type,Stock_Description from Stocks
where Stock_Type = 'Defensive Stocks' or Stock_Description = 'Preferred Stock' ;

select Stock_Type,Stock_Description from Stocks
where Stock_Type = 'Penny Stocks' or Stock_Description = 'Preferred Stock' ;
----------------------------NOT-------------------------------------
select* from Stocks
where not Stock_Type = 'Penny Stocks' ;

select* from Stocks
where not Stock_Type = 'Value Stocks' ;

select* from Stocks
where not Stock_Description = 'Preferred Stock' ;

select* from Stocks
where not Stock_Description = 'Common Stock' ;
----------------------------LIKE-------------------------------------
select * from Stocks
where Stock_Type like 'P%' ;

select * from Stocks
where Stock_Type like 'G%' ;

select * from Stocks
where Stock_Type like 'D%' ;

select * from Stocks
where Stock_Type like 'S%' ;
----------------------------IN-------------------------------------
select * from Stocks
where Stock_Type  In ('Penny Stocks','Speculative Stocks.','Defensive Stocks') ;

select * from Stocks
where Stock_NO In (15,48,7 );
----------------------------BETWEEN-------------------------------------
select * from Stocks
where Stock_Item between 10 And 60 ;

select * from Stocks
where Stock_NO between 15 And 50 ;

-----------------------COUNT--------------------------
SELECT COUNT (Stock_Item)Stock_Item
FROM Stocks;

SELECT COUNT (Stock_Item)Stock_Item
FROM Stocks;

SELECT COUNT (Stock_Item)Stock_Item
FROM Stocks;
-----------------------AVERAGE--------------------------
SELECT AVG (Stock_Item)Stock_Item
FROM Stocks;

SELECT AVG (product_ID)product_ID
FROM Stocks;

SELECT AVG (product_ID)product_ID
FROM Stocks;
-----------------------SUM--------------------------
SELECT SUM (Stock_Item)Stock_Item
FROM Stocks;

SELECT SUM (product_ID)product_ID
FROM Stocks;

SELECT SUM (product_ID)product_ID
FROM Stocks;
-----------------------MIN--------------------------
SELECT MIN (Stock_Item)Stock_Item
FROM Stocks;

SELECT MIN (product_ID)product_ID
FROM Stocks;

SELECT MIN (product_ID)product_ID
FROM Stocks;
-----------------------MAX--------------------------
SELECT MAX (Stock_Item)Stock_Item
FROM Stocks;

SELECT MAX (product_ID)product_ID
FROM Stocks;

SELECT MAX (product_ID)product_ID
FROM Stocks;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(product_ID)product_ID,COUNT(product_ID)product_ID
,SUM(product_ID)product_ID
FROM Stocks
where product_ID > 20
GROUP BY product_ID
ORDER BY AVG(product_ID)asc,COUNT(product_ID),SUM(product_ID)DESC;

-----------------------COUNT,AVERAGE,SUM+WHERE+ORDER BY--------------------------

SELECT  AVG(Stock_Item)Stock_Item,COUNT(Stock_Item)Stock_Item
,SUM(Stock_Item)Stock_Item
FROM Stocks
where Stock_Item > 20
GROUP BY Stock_Item
ORDER BY AVG(Stock_Item)asc,COUNT(Stock_Item),SUM(Stock_Item)DESC;

------------------------Inner Join-----------------------------

SELECT Stocks.stock_ID, Sales.Sale_Amount
FROM Stocks
INNER JOIN Sales ON Stocks.stock_ID = Sales.Sale_ID;

SELECT Stocks.stock_ID, Sales.Sale_Description
FROM Stocks
INNER JOIN Sales ON Stocks.stock_ID = Sales.Sale_ID;

SELECT Stocks.stock_ID, Sales.Sale_Checks
FROM Stocks
INNER JOIN Sales ON Stocks.stock_ID = Sales.Sale_ID;
 
------------------------Left Join-----------------------------

SELECT Sales.Sale_Description, Stocks.Stock_Delete
FROM Sales
LEFT JOIN Stocks ON Stocks.stock_ID = Sales.Sale_ID;

SELECT Sales.Sale_Checks, Stocks.Stock_Delete
FROM Sales
LEFT JOIN Stocks ON Stocks.stock_ID = Sales.Sale_ID;

SELECT Sales.Sale_customer_ID, Stocks.Stock_Delete
FROM Sales
LEFT JOIN Stocks ON Stocks.stock_ID = Sales.Sale_ID;

------------------------Right Join-----------------------------

SELECT Stocks.stock_ID, Sales.Sale_Amount, Sales.Sale_customer_ID
FROM Stocks
RIGHT JOIN Sales ON Stocks.stock_ID = Sales.Sale_ID

SELECT Stocks.stock_ID, Sales.Sale_Checks, Sales.Sale_customer_ID
FROM Stocks
RIGHT JOIN Sales ON Stocks.stock_ID = Sales.Sale_ID

SELECT Stocks.stock_ID, Sales.Sale_Description, Sales.Sale_customer_ID
FROM Stocks
RIGHT JOIN Sales ON Stocks.stock_ID = Sales.Sale_ID

------------------------Full Join-----------------------------

SELECT Sales.Sale_Description, Stocks.stock_ID
FROM Sales
CROSS JOIN Stocks;

SELECT Sales.Sale_Checks, Stocks.stock_ID
FROM Sales
CROSS JOIN Stocks;

----------Joins using where clause + order by, group by statement----------

SELECT Sales.Sale_Checks,COUNT(Stocks.stock_ID) AS stock_ID FROM Stocks
right JOIN Sales ON Stocks.stock_ID = Sales.Sale_ID
where stock_ID > 10
GROUP BY Sale_Checks
ORDER BY (Sale_Checks);

SELECT Sales.Sale_Checks,COUNT(Stocks.stock_ID) AS stock_ID FROM Stocks
right JOIN Sales ON Stocks.stock_ID = Sales.Sale_ID
where stock_ID > 10
GROUP BY Sale_Checks
ORDER BY (Sale_Checks);

SELECT Sales.Sale_Checks,COUNT(Stocks.stock_ID) AS stock_ID FROM Stocks
right JOIN Sales ON Stocks.stock_ID = Sales.Sale_ID
where stock_ID > 10
GROUP BY Sale_Checks
ORDER BY (Sale_Checks);

SELECT Sales.Sale_Checks,COUNT(Stocks.stock_ID) AS stock_ID FROM Stocks
right JOIN Sales ON Stocks.stock_ID = Sales.Sale_ID
where stock_ID > 10
GROUP BY Sale_Checks
ORDER BY (Sale_Checks);

SELECT Sales.Sale_Checks,COUNT(Stocks.stock_ID) AS stock_ID FROM Stocks
right JOIN Sales ON Stocks.stock_ID = Sales.Sale_ID
where stock_ID > 10
GROUP BY Sale_Checks
ORDER BY (Sale_Checks);


--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------

