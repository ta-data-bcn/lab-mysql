#Step 1
USE publications;
SELECT t.title_id, ta.au_id,t.advance*ta.royaltyper/100 as 'advance', t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as 'royalty' 
FROM `titleauthor` ta
JOIN titles t ON t.title_id = ta.title_id
JOIN sales s ON s.title_id = t.title_id;


#STEP 2
# Same results but with different approach
#USE publications;
#SELECT t.title_id, ta.au_id,t.advance*ta.royaltyper/100 as 'advance', sum(t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100) as 'royalty' 
#FROM `titleauthor` ta
#JOIN titles t ON t.title_id = ta.title_id
#JOIN sales s ON s.title_id = t.title_id
#group by ta.au_id , t.title_id;

select  au_id, title_id, advance, sum(royalty) as 'sum_royalties'
from (SELECT t.title_id, ta.au_id,t.advance*ta.royaltyper/100 as 'advance', t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as 'royalty' 
FROM `titleauthor` ta
JOIN titles t ON t.title_id = ta.title_id
JOIN sales s ON s.title_id = t.title_id ) as royalty_per_sales
group by au_id , title_id;

#STEP 3
select au_id, sum(royalty+advance) as 'total_profit'
from (select  au_id, title_id, advance, sum(royalty) as 'royalty'
from (SELECT t.title_id, ta.au_id,t.advance*ta.royaltyper/100 as 'advance', t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as 'royalty' 
FROM `titleauthor` ta
JOIN titles t ON t.title_id = ta.title_id
JOIN sales s ON s.title_id = t.title_id ) as royalty_per_sales
group by au_id , title_id) as royalty_per_title
group by au_id
order by total_profit DESC
limit 3;

#-----------------
#CHALLENGE 2
create temporary table temp1
SELECT t.title_id, ta.au_id,t.advance*ta.royaltyper/100 as 'advance', t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as 'royalty' 
FROM `titleauthor` ta
JOIN titles t ON t.title_id = ta.title_id
JOIN sales s ON s.title_id = t.title_id;
select * from temp1;

create temporary table temp2
select  au_id, title_id, advance, sum(royalty) as 'sum_royalties'
from temp1
group by au_id , title_id, advance;
select * from temp2;

#------------
#CHALLENGE 3
create table most_profiting_authors
select au_id, sum(royalty+advance) as 'total_profit'
from (select  au_id, title_id, advance, sum(royalty) as 'royalty'
from (SELECT t.title_id, ta.au_id,t.advance*ta.royaltyper/100 as 'advance', t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 as 'royalty' 
FROM `titleauthor` ta
JOIN titles t ON t.title_id = ta.title_id
JOIN sales s ON s.title_id = t.title_id ) as royalty_per_sales
group by au_id , title_id) as royalty_per_title
group by au_id
order by total_profit DESC