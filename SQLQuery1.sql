create database project1
use project1
Create table Genres 
(
Id INT IDENTITY PRIMARY KEY,
Name NVARCHAR(30) NOT NULL,
)

create table Movie
(
Id INT IDENTITY PRIMARY KEY,
Name NVARCHAR(30) NOT NULL,
Genresid INT CONSTRAINT FK_Faculties_GenresIS FOREIGN KEY(Genresid) REFERENCES Genres(Id) not null
)
create table Actors
(
Id INT IDENTITY PRIMARY KEY,
Name NVARCHAR(30) NOT NULL,
SurName NVARCHAR(30) NOT NULL,
Age int not null
)
create table ActorsMovie
(
Id INT IDENTITY PRIMARY KEY,
MoviesId INT CONSTRAINT FK_Faculties_MOviesIS FOREIGN KEY(MoviesId) REFERENCES Movie(Id) not null,
AcorsId INT CONSTRAINT FK_Faculties_ActorsIS FOREIGN KEY(AcorsId) REFERENCES Actors(Id) not null
)
insert into Genres
values
('Advunture'),
('Horror'),
('Action'),
('Comedy'),
('Fantasy')
insert into Movie
values
('Avatar',5),
('Astral',2),
('Journey',1),
('Fast and furios',3),
('Hangover',4)
insert into Actors
values
('Sam','Worthington',45),
('Frank ','Dillane',30),
('Dwayne  ','Johnson',49),
('Vin   ','Diesel',54),
('Bradley','Cooper',46)
insert into ActorsMovie
values 
(1,1),
(2,2),
(3,3),
(4,4),
(5,5)


select * from Genres
select * from Movie
select * from Actors
select * from ActorsMovie



select  AVG(Age) from Actors
select * from Actors where Age>(select AVG(Age) from Actors)

select Actors.Name,Actors.Surname,Actors.Age, Movie.Name from ActorsMovie
JOIN Actors on AcorsId=Actors.id
Join Movie on MoviesId=Movie.Id

