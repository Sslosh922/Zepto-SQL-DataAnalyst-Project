 -- Let count the no of rows
SELECT  count(*) FROM zepto;

-- sample data
select * from zepto
limit 10;

--  check null values
select *from zepto where  name is null 
or category is null or
mrp is null or
discountPercentage is null 
or availableQuantity is null 
or discountedSellingPrice is null
or weightInGrams is null or outOfStock is null or quantity is null;

-- differnet product category 
select distinct category  from zepto order by category;

-- productInStockorNot
select outOfStock  , count(outOfStock) as count_of_Stock from zepto group by outOfStock;

-- product name repated multiple times

select name , count(name) as no_times_repeated from zepto group by name having  count(name) > 1 order by count(name) desc;

-- ------------------------------      data Cleaning  ---------------------------------------------

-- products with price Zero
select * from zepto where mrp = 0 or discountedSellingPrice = 0;
delete  from zepto where mrp = 0;

-- Mrp from paisse to ruppe
set SQL_SAFE_UPDATES = 0;
update zepto set mrp = mrp/100.0, discountedSellingPrice = discountedSellingPrice/100.0;

SELECT MRP , DISCOUNTEDSELLINGPRICE FROM ZEPTO;

-- Lets do Some business Analytics 

 -- select top 10 best product  based on percentage discount 
 select  distinct name  , mrp , discountpercentage from zepto order by discountpercentage desc limit 10; 
 
 -- Q2. WHat  are the products with high mrp but out of stock.
 select distinct name , mrp from zepto where outOfStock = '1' and mrp > 300 order by  mrp desc limit 10 ;
 
 -- Q3. Calculate estimated revenue  for each category .
 select category , sum(discountedsellingprice*availableQuantity) as revenue from zepto group by category order by revenue;
 
 -- Q4. find all products where Mrp is > 500  and discount less than 10%.
 select distinct name , mrp , discountpercentage from zepto where mrp >500 and discountpercentage <10 order by mrp desc , discountpercentage desc; 
 
 -- Q5 . Identify  the top 5 categoris  offering  highest  avergae discount percentages.
 select category , round(avg(discountpercentage),2) as avg_discount from zepto group by category order by avg_discount desc limit 5;
 
 -- Q6. Find the price per gram for products above 100g  and sort by best value.
 select  distinct name , mrp  , weightingrams, round(discountedsellingPrice /weightingrams,2) as selling_amount_per_grams  from zepto  where weightingrams > 100 order by selling_amount_per_grams desc ;
 
 -- Q7. Group The products into categories like low , medium ,Bulk
 select distinct name , category , quantity , case 
 when quantity >=200  then  'bulk'    
 when quantity >=100  then 'medium'
 else 'low' End as quantity_category from zepto;
 
 -- Q8 Whhat is the overall inventory weight  per category ?
 
 select category , sum(availablequantity*weightingrams) as weight_per_cat from zepto group by category order by weight_per_cat desc;