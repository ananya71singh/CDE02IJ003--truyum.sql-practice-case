


create database truyumdatabase;
use truyumdatabase;

/* creating menue items table*/

create table menu_items
(
item_id varchar(30) not null,
name varchar(30) not null,
price int(10) not null,
active varchar(8) default 'no',
date_of_launch date not null,
category varchar(30) not null,
free_delivery varchar(8) default 'no',
constraint ab primary key(item_id)
);

/*creating cart table*/
create table cart(
cart_id varchar(30) not null,
name varchar(30) not null, 
free_delivery varchar(8) default 'no',
price int(10) not null
);
ALTER TABLE cart
ADD cartitem_name varchar(30) not null;


/* creating login details table
create table login_details
(
login_id varchar(20) not null,
login_password varchar(20) not null,
login_type varchar(10) default  'customer',
constraint asd primary key(login_id)
);*/

/*insertion query for menu items*/

insert into menu_items values('TYUC001','Muffens','40','No','2017-05-22','Desert','yes');

/* sql query to get all menu items*/
select * from menu_items;

/*query for view menu customer with condition*/

SELECT name,price,free_delivery FROM menu_items where date_of_launch < curdate() and active='yes';

/*update query for menu-items*/

update menu_items set price =150 where item_id='b01';

/*query to get menu item based on conditon*/

select * from menu_items where item_id='b01';

/*query ot insert in cart*/

insert into cart values('TYUC004','asad','yes',200,'cake');

/*query to display specific user cart*/
select * from cart where cart_id='TYUC004';


/* calculating total in cart for each user*/

select cart_id,sum(price) from cart group by cart_id order by cart_id;


/*query to delete from cart*/

delete from cart where cart_id='TYUC004';



