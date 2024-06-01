 create database Sales_Analysis;
 
use Sales_Analysis;

select * from Sales;

# The data is preprcoessed with new variables order_date, order year 

# DISTINCT AND COUNT OF THE  PRODUCTS. 

select distinct(product), count(product) from sales group by product;

select * from sales;

# QUANTITY AND SALES OF EACH PRODUCT. 

select product, sum(sales) as Sales,sum(`Quantity Ordered`)  as Quantity from sales group by product order by sum(sales)desc;

# MAXIMUM  QUANTITY ORDERED OF EACH PRODUCTS 

select max(`Quantity Ordered`),product from sales group by product order by max(`Quantity Ordered`) desc ;

# MINIMUM  QUANTITY ORDERED OF EACH PRODUCTS 

select min(`Quantity Ordered`),product from sales group by product order by min(`Quantity Ordered`) desc ;

# Year Wise sales 

select distinct(Order_year) from sales;

# QUANTITY ORDERED  AND SALES WITH PRODUCTS IN 2019 

select product, sum(`Quantity Ordered`) as Quantity, sum(sales) as Sales,Order_year from sales where Order_year = 2019 group by product,Order_year order by sum(`Quantity Ordered`) desc ;

# QUANTITY ORDERED  AND SALES WITH PRODUCTS IN 2020

select product, sum(`Quantity Ordered`) as Quantity, sum(sales) as Sales,Order_year from sales where Order_year = 2020 group by product,Order_year order by sum(`Quantity Ordered`) desc ;


# Check distinct order date and month 

select distinct(Order_month) from sales;

select distinct(Order_date) from sales;

# QUARTER 1 SALES of 2019

select product,sum(sales),count(Product),Order_month,order_year from sales where Order_month >= 1 and Order_month <= 3  and order_year= 2019 group by product,Order_month order by sum(sales) desc;

# QUARTER 2 SALES of 2019

select product,sum(sales),count(Product),Order_month,order_year from sales where Order_month >= 4 and Order_month <= 6 and order_year= 2019 group by product,Order_month order by sum(sales) desc;

# QUARTER 3 SALES of 2019

select product,sum(sales),count(Product),Order_month,order_year from sales where Order_month >= 7 and Order_month <= 9 and order_year= 2019 group by product,Order_month order by sum(sales) desc;

# QUARTER 4 SALES of 2019

select product,sum(sales),count(Product),Order_month,order_year from sales where Order_month >= 10 and Order_month <= 12 and order_year= 2019 group by product,Order_month order by sum(sales) desc;

# SALES OF 2020 

select * from sales;

select sum(sales),product, order_month,order_year from sales where order_year=2020 group by product,order_month,order_year;

	

# Hourse wise sales in between 0 - 12 

select sum(sales),order_hour,product,count(order_hour) from sales where order_hour >= 0 and order_hour <= 12  group by order_hour,product order by sum(sales) desc ;


# Hourse wise sales in between 12-24

select sum(sales),order_hour,product,count(order_hour) from sales where order_hour >= 12 and order_hour <= 24  group by order_hour,product order by sum(sales) desc ;

# city wise sales

select distinct(city) from sales;

# NEW YORK 


select sum(sales) as Sales, product, city from sales where `Purchase Address` like "%New york city%" group by city,product order by sum(sales) desc ;

# ATLANTA

select sum(sales) as Sales, product, city from sales where `Purchase Address` like "%Atlanta%" group by city,product order by sum(sales) desc ;


# SAN FRANCISCO

select sum(sales) as Sales, product, city from sales where `Purchase Address` like "%San francisco%" group by city,product order by sum(sales) desc ;

# PORTLAND

select sum(sales) as Sales, product, city from sales where `Purchase Address` like "%Portland%" group by city,product order by sum(sales) desc ;

# DALLAS 

select sum(sales) as Sales, product, city from sales where `Purchase Address` like "%DALLAS%" group by city,product order by sum(sales) desc ;


# Los Angeles 

select sum(sales) as Sales, product, city from sales where `Purchase Address` like "%LOS ANGELES%" group by city,product order by sum(sales) desc ;


# BOSTON 

select sum(sales) as Sales, product, city from sales where `Purchase Address` like "%Boston%" group by city,product order by sum(sales) desc ;


# AUSTIN 

select sum(sales) as Sales, product, city from sales where `Purchase Address` like "%Austin%" group by city,product order by sum(sales) desc ;


# SEATTLE 

select sum(sales) as Sales, product, city from sales where `Purchase Address` like "%Seattle%" group by city,product order by sum(sales) desc ;











 
 
 