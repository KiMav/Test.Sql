Create table Article(
Id int Identity (1,1) primary key,
Name varchar(100)
)

Create table Tag(
Id int Identity (1,1) primary key,
Name varchar(100)
)

Create table ArticleTag(
IdArticle int ,
IdTag int,
foreign key (IdArticle) references Article(Id),
foreign key (IdTag) references Tag(Id),
)

insert into Article(Name) values
('Sport'), 
('Medecine')


insert into Tag(Name) values
('Health'), 
('Flu'),
('Car')

insert into ArticleTag(IdArticle, IdTag)
values
(2, 1),(2, 2)

select * from Article
select * from Tag
select * from ArticleTag

/*
Id	Name
1	Sport
2	Medecine

Id	Name
1	Health
2	Flu
3	Car

IdArticle	IdTag
2	1
2	2
*/

select 
	A.Name, T.Name
from 
	 ArticleTag AT join Tag T on AT.IdTag = T.Id right join Article A on A.Id = AT.IdArticle

/*
Name		Name
Sport		NULL
Medecine	Health
Medecine	Flu
*/