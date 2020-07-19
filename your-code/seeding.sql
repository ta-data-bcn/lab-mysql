#we seed cars
use car_dealership;
Insert into cars (Manufacturer, Model, Color, Year, VIN) 
values('Volvo','V60','Gray Cross Country',2019,'DAM41UDN3CHU2WVF6');
use car_dealership;
Insert into customers (Customer_ID, Name, Phone_Number, Email, Adress, City, State, Country, Postal_Code) 
values(10001,'Pablo Picasso','+34 636 176 382','-','Paseo de la Chopera, 14', 'Madrid','Madrid','Spain',28045);
Insert into customers (Customer_ID, Name, Phone_Number, Email, Adress, City, State, Country, Postal_Code) 
values('20001','Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St','Miami','Florida','United States', 28045);
Insert into customers (Customer_ID, Name, Phone_Number, Email, Adress, City, State, Country, Postal_Code) 
values('30001','Napoléon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée','Paris','Île-de-France','France', 75008);

#we seed sales_person
use car_dealership;
Insert Into sales_person ( Staff_ID, Name, Store)
values(00001,'Petey Cruiser','Madrid');
Insert Into sales_person ( Staff_ID, Name, Store)
values(00002,'Anna Sthesia','Barcelona');
Insert Into sales_person ( Staff_ID, Name, Store)
values(00003,'Paul Molive','Berlin');
Insert Into sales_person ( Staff_ID, Name, Store)
values(00004,'Gail Forcewind', 'Paris');
Insert Into sales_person ( Staff_ID, Name, Store)
values(00005,'Paige Turner','Mimia');
Insert Into sales_person ( Staff_ID, Name, Store)
values(00006,'Bob Frapples','Mexico City');
Insert Into sales_person ( Staff_ID, Name, Store)
values(00007,'Walter Melon','Amsterdam');
Insert Into sales_person ( Staff_ID, Name, Store)
values(00008,'Shonda Leer','São Paulo');

#I used this to delete some numbers I introduced in car_id when I realized I needed that column.
#I introduced them with Insert Into instead of set update, and of course there were nulls in all the other fields of the rows.

use car_dealership;
delete  from cars
where Car_ID in ( 0,1,2,3,4,5)

#I used this to correctly update the values 

use car_dealership;
update cars
set Car_ID = 5
where Model = 'V60'
and color = 'Gray Cross Country'

#we seed invoice
use car_dealership;
insert into invoice (Invoice_Num, Date, Car_ID, Customer_ID, Staff_ID)
values(852399038,'2018-08-2',0,1,3);
insert into invoice (Invoice_Num, Date, Car_ID, Customer_ID, Staff_ID)
values(731166526,'2018-12-31',3,0,5);
insert into invoice (Invoice_Num, Date, Car_ID, Customer_ID, Staff_ID)
values(271135104,'2019-01-22',2,2,7);