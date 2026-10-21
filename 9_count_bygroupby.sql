use college;

create table payments(
id int primary key auto_increment,
customer varchar(50),
payment_mode varchar(50),
city varchar(50)
) auto_increment = 101;

insert into payments
(customer, payment_mode, city)
values
-- ("Olivia Barrett", "Netbanking",  "Portland"); 
("Ethan", "Netbanking",  "Boston"),
("Maya", "Credit Card",  "Miami"),
("Liam", "Debit Card",  "Seattle"),
("Sophie", "Netbanking",  "Denver"),
("Caleb", "Credit Card",  "New Orleans"),
("Ava", "Debit Card",  "Minneapolis"),
("lucas", "Netbanking",  "Phoenix"),
("isabella", "Credit Card",  "Boston"),
("Jackson", "Debit Card",  "Nashville");

select payment_mode, count(customer) from payments group by payment_mode;

select * from payments;

-- drop table payments;