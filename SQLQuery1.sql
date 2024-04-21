create database BookShop

use BookShop

create table Authors(
id int primary key identity(1,1) not null,
Name nvarchar(max) not null check(Name<>''),
Surname nvarchar(max) not null check(Surname<>''),
CountryId int not null,
foreign key (CountryId) references Countries(id)
)

create table Books(
id int primary key identity(1,1) not null,
Name nvarchar(max) not null check(Name<>''),
Pages int not null check(Pages>0),
Price money not null check(Price>=0),
PublishDate date not null check(PublishDate<='2024-04-21'),
AuthorId int not null,
foreign key(AuthorId) references Authors(id),
ThemeId int not null,
foreign key(ThemeId) references Themes(id)	
)

create table Countries
(
	id int primary key identity(1,1) not null,
	Name nvarchar(50) not null check(Name<>'') unique
)

create table Sales(
id int primary key identity(1,1) not null,
Price money not null check(Price>=0),
Quantity int not null check(Quantity>=0),
SaleDate date not null check(SaleDate<='2024-04-21'),
BookId int not null,
foreign key (BookId) references Books(id),
ShopId int not null,
foreign key (ShopId) references Shops(id)
)


create table Shops
(
id int primary key identity(1,1) not null,
Name nvarchar(max) not null check(Name<>''),
CountryId int not null,
foreign key (CountryId) references Countries(id)
)

create table Themes(
id int primary key identity(1,1) not null,
Name nvarchar(200) not null check(Name<>'') unique,
)



