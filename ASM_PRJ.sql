create DATABASE Showroom
USE Showroom
Drop table CarNames;
CREATE TABLE CarNames(
	CarID varchar(10) PRIMARY KEY,
	CarName varchar(35),
	Model varchar(13), -- SUV / Sedan / Coupe / Pickup / Convertible / Electrics
	Description varchar(300)
)

Drop table CarDetail;
CREATE TABLE CarDetail(
	CarID  varchar(10) FOREIGN KEY REFERENCES CarNames(CarID),
	Quantity int,
	Price int, --USD
	NumSeat int, --Max 7
	Doors int,
	Color varchar(10),
	Year date,
	MadeIn varchar(10),
	EngineSize int, --200cc ...
	Power int,--HP
	Cylinders varchar(3),
	Image varchar(200)
)
Select CarName,Model,Description,Quantity,Price,NumSeat,Doors,Color,Year,MadeIn,EngineSize,Power,Cylinders,Image from CarNames Left outer join CarDetail on CarDetail.CarID = CarNames.CarID where CarName  LIKE 'B%';

Drop table CustomerInfor;
CREATE TABLE CustomerInfor(
	ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY CLUSTERED,
	CustomerID AS 'CID' + RIGHT('00000000' + CAST(ID AS VARCHAR(8)), 8) PERSISTED,
	CustomerName nvarchar(40),
	Phone varchar(12),
	Email varchar(50) NOT NULL,
	CusAddress varchar(50),
	DateOfBirth date,
	Username varchar(15) NOT NULL,
	Password varchar(30) NOT NULL
)

Drop table RegisterToDrive;
CREATE TABLE RegisterToDrive(
	CustomerName varchar(50),
	Phone varchar(12),
	CarID  varchar(10) FOREIGN KEY REFERENCES CarNames(CarID),
	DateRegister date,
	DateTest date,
	Description nvarchar(250)
)

Drop table AdminInfor;
CREATE TABLE AdminInfor(
	AdminID varchar(10) PRIMARY KEY NOT NULL,
	Role bit, --(1) Admin/ (0) Saler
	AdminName nvarchar(40),
	Phone varchar(12),
	Email varchar(50) NOT NULL,
	AdminAddress varchar(50),
	DateOfBirth date,
	Username varchar(15) NOT NULL,
	Password varchar(30) NOT NULL,
	Image varchar(250)
)

--Drop table Blog;
CREATE TABLE Blog(
	BlogID varchar(20),
	NamePost varchar(50),
	DatePost date,
	Image varchar(250),
	Title varchar(100),
	Description varchar(7990)
)
--Drop table Message;
CREATE TABLE Message(
	Name varchar(50),
	Email varchar(50) NOT NULL,
	Note varchar(7990)
)