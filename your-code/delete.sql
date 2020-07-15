#I used this to delete some numbers I introduced in car_id when I realized I needed that column.
#I introduced them with Insert Into instead of set update, and of course there were nulls in all the other fields of the rows.

use car_dealership;
delete  from cars
where Car_ID in ( 0,1,2,3,4,5)