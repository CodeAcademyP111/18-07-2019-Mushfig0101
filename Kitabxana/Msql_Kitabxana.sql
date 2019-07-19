create database Book_Boutique

use Book_Boutique;


create table Boutique(
Boutique_ID  int primary key identity not null,
Boutique_Name nvarchar(100) not null
)

create table Books(
Book_ID int primary key identity not null,
Book_Name nvarchar(200) not null,
Book_Category nvarchar (50),
Book_Year int,
Book_Ref_ID int references Boutique(Boutique_ID) not null
)

create table Author(
Author_ID int primary key identity not null,
Author_Name nvarchar(100),
Author_Ref_ID int references Books (Book_ID)not null
)

create table City(
City_ID   int primary key identity not null,
City_Name  nvarchar(100) not null,
City_REf_ID int references Author(Author_ID) not null
)

create table Country(
Country_ID   int primary key identity not null,
Country_Name  nvarchar(100) not null,
Country_REf_ID int references Author(Author_ID) not null
)

select * from Boutique
select * from Books
select * from Author
select * from City
select * from Country

select Boutique.Boutique_Name from Boutique



select Books.Book_Name ,Books.Book_Category,
Books.Book_Year 
from Books

join Boutique
on Books.Book_Ref_ID = Boutique.Boutique_ID

select Author_Name 
from Author

select City_Name 
from City

select Country_Name
from Country
