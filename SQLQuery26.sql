select Name from Books
where Pages between 100 and 200


select Name from Books
where Name like 'A%' or Name like 'Z%'


select Name from Books
where ThemeId = 3 and (select sum(Quantity) from Sales where BookId = Books.id) > 30;


select Name from Books
where Name like '%Microsoft%' and Name not like '%Windows%'



select * from Books
where Price / Pages < 6.65;


