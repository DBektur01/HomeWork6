create type Gender as enum ('MALE','FEMALE');
create table publishers (
    id serial primary key,
    name varchar
);

create table authors (
     id serial primary key,
     first_name varchar,
     last_name varchar,
     email varchar ,
     date_of_birth date ,
     country varchar,
     gender GENDER
);
create type Genre as enum ('DETECTIVE','DRAMA','HISTORY','ROMANCE','BIOGRAPHY','FANTASY');

create table books (
       id serial primary key,
       name varchar ,
       country varchar,
       published_year date,
       price numeric ,
       genre Genre
);

create table languages (
       id serial primary key ,
       language varchar
);

alter table authors add constraint varchar unique (email);
alter table books add column publisher_id int references publishers(id);
alter table books add column language_id int references languages(id);
alter table books add column author_id int references authors(id);
alter table languages alter column language set not null;


insert into publishers(name)
values ('RELX Group'),
       ('Thomson Reuters'),
       ('Holtzbrinck Publishing Group'),
       ('Shanghai Jiao Tong University Press'),
       ('Wolters Kluwer'),
       ('Hachette Livre'),
       ('Aufbau-Verlag'),
       ('Macmillan'),
       ('Harper Collins'),
       ('China Publishing Group'),
       ('Springer Nature'),
       ('Grupo Planeta'),
       ('Books.Ru Ltd.St Petersburg'),
       ('The Moscow Times'),
       ('Zhonghua Book Company');
insert into authors(first_name, last_name, email, date_of_birth, country, gender)
values ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '25/9/1968', 'France', 'FEMALE'),
       ('Patti', 'Walster', 'pwalster1@addtoany.com', '31/10/1965', 'China', 'FEMALE'),
       ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '16/5/1980', 'Germany', 'MALE'),
       ('Brand', 'Burel', 'bburel3@ovh.net', '24/4/1964', 'United States', 'MALE'),
       ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '7/3/1967', 'France', 'MALE'),
       ('Alexey', 'Arnov', 'larnoldi5@writer.com', '29/12/1964', 'Russia', 'MALE'),
       ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '14/12/1983', 'China', 'FEMALE'),
       ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '29/1/1960', 'United States', 'FEMALE'),
       ('Boigie', 'Etridge', 'betridge8@ed.gov', '17/11/1978', 'France', 'MALE'),
       ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '9/8/1962', 'Germany', 'MALE'),
       ('Margarita', 'Bartova', 'mbartova@example.com', '12/3/1984', 'Russia', 'FEMALE'),
       ('Innis', 'Hugh', 'ihughb@marriott.com', '28/8/1983', 'Germany', 'MALE'),
       ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '28/3/1980', 'Russia', 'FEMALE'),
       ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '8/5/1966', 'Spain', 'MALE'),
       ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '17/10/1962', 'United States', 'FEMALE');

insert into languages(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');

insert into books(name, country, published_year, price, genre, language_id, publisher_id, author_id)
values('Taina', 'Russia', '11/12/2021', '568','DETECTIVE', '5', '12', '6'),
      ('Zvezdopad', 'Russia', '12/9/2004', '446', 'ROMANCE', '5', '13', '11'),
      ('Homo Faber', 'Germany', '4/10/2022', '772','FANTASY', '3', '5', '3'),
      ('Der Richter und Sein Henker', 'Germany', '2/1/2011', '780','DETECTIVE', '3', '3', '10'),
      ('Lord of the Flies', 'United States', '7/11/2015', '900','FANTASY', '1', '2', '4'),
      ('Un soir au club', 'France', '1/12/2018', '480','DRAMA', '2', '1', '1'),
      ('Voina', 'Russia', '12/6/2004', '880',  'HISTORY', '5', '4', '13'),
      ('Sun Tzu', 'China', '9/5/2022', '349',  'HISTORY', '4', '4', '2'),


      ('Emil und die Detektive', 'Germany', '6/11/2010', '228','DETECTIVE','3', '5', '10'),
      ('Coule la Seine', 'France', '3/1/2015', '732','FANTASY', '2', '6', '1'),
      ('Love and hatred', 'Russia', '2/3/2012', '763', 'ROMANCE', '5', '14', '13'),
      ('Fantastic Mr Fox', 'United States', '3/10/2018', '309','FANTASY', '1', '9', '8'),
      ('Contes de la Bécasse', 'France', '10/5/2019', '378', 'ROMANCE', '2', '6', '9'),
      ('“The Death of Ivan Ilyich', 'Russia', '9/12/2000', '814','DRAMA', '5', '6', '6'),
      ('Bonjour Tristesse', 'France', '8/2/2015', '502', 'ROMANCE', '2', '8', '5'),
      ('Die Verwandlung', 'Germany', '6/12/2008', '305', 'DETECTIVE','3','7', '12'),
      ('The Inspector Barlach Mysteries', 'Germany', '3/10/2007', '566','DETECTIVE', '3', '3', '3'),
      ('LÉtranger', 'France', '14/11/2017', '422', 'ROMANCE', '2', '8', '5'),
      ('Lao Tse', 'China', '16/7/2005', '900','FANTASY', '4', '4', '2'),
      ('Semya', 'Russia', '12/4/2004', '194','DRAMA', '5', '13', '11'),
      ('Empty World', 'United States', '1/4/2008', '324','FANTASY', '1', '11', '15'),
      ('Domainer', 'Germany', '1/6/2020', '420', 'ROMANCE', '3', '5', '10'),
      ('The Fault in Our Stars', 'United States', '2/12/2008', '396', 'ROMANCE','1', '9', '4'),
      ('Die R uber', 'Germany', '25/6/2020', '300', 'ROMANCE', '3', '7', '12'),
      ('Jung Chang', 'China', '14/5/2021', '600',  'HISTORY', '4', '10', '7'),
      ('Les Aventures de Tintin', 'France', '4/10/2015', '582','DRAMA', '2', '1', '5'),
      ('Unvollendete Geschichte', 'Germany', '12/12/2010', '269','DETECTIVE', '3', '5', '10'),
      ('Amy Tan', 'China', '1/9/2023', '486','DRAMA', '4', '4', '7'),
      ('Krasnaya luna', 'Russia', '2/7/2020', '550','FANTASY', '5', '12', '11'),
      ('Emma', 'United States', '10/11/2021', '599', 'BIOGRAPHY','1', '2', '15');


select name, published_year,genre from books;
select distinct (country) from authors;
select * from books where published_year between '1/1/2020' and '1/1/2023';
select name, genre from books where genre = 'DETECTIVE';
select concat (first_name ,' ', last_name)as author from authors ;
select concat (first_name, ' ', last_name) as full_name,country from authors where country in ('France','Germany') order by full_name ;
select name, country,published_year, price,genre from books where country not in ('ROMANCE')and price <=500;
select * from authors where gender = 'FEMALE' limit 3;
select * from authors where gender = 'FEMALE' and email like '%.com' and first_name like '____';
select country, count(*) from authors group by country;
select country ,count(*) from authors group by country  having count(*)>=2 order by country ;
select genre, sum(price )from books group by genre;
select genre, min(price ) from books where genre in ('ROMANCE' , 'DETECTIVE') group by genre;
select genre , count (*) from books where genre in ('HISTORY','BIOGRAPHY') group by genre;
select books.name ,p.name, l.language from books join publishers p on books.publisher_id = p.id join languages l on books.language_id= l.id ;
select * , b.publisher_id from authors left join books b on authors.id = b.publisher_id;
select authors.*, p.* from authors left join books b on authors.id = b.publisher_id join publishers p on b.publisher_id = p.id;
select concat(first_name,' ',last_name)as full_name,b.name from authors left join books b on authors.id = b.author_id ;
select l.language, count(*) from books join languages l on books.language_id = l.id group by l.language order by count(*) desc;
select p , round(sum(price)) from books join publishers p on books.publisher_id= p.id group by p;
select books.*,a.first_name, a.last_name from books join authors a on books.author_id = a.id where published_year between '1/1/2010' and '1/1/2015';
select concat(first_name , ' ', last_name)as full_name ,  sum (price) from books join authors a on books.author_id=a.id where published_year between '1/1/2010' and '12/31/2015' group by full_name ;




