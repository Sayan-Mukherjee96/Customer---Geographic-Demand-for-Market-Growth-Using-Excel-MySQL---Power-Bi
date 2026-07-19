use retail_db;

/*Basic Data Exploration*/

select * from stores;

select * from products;
 
select * from exchange_rates;

select * from sales;

select * from customers;

/*Explore all countries our customers come from*/
select distinct country 
from customers;

/*Explore all Brand "The Major Divisions"*/
select distinct Brand
from products;

/*Explore all product "The Major Divisions"*/
select distinct Category, Subcategory, `Product Name`
from products;

/*1st Order Date & Last Order Date*/
select min(`Order Date`) as first_order_date, max(`Order Date`) as last_order_date
from sales;

/*Total Number of the orders*/
select count(distinct `Order Number`) as total_order_quentity
from sales;
select count(`Order Number`) as total_order_quentity
from sales;

/*The Avg Selling Price*/
select round(avg(`Unit Price USD`),1) as Avg_Price
from products;

/*The Total Number of product*/
select count(`Product Name`) as total_product
from products;

/*Total Number of customer*/
select count(distinct CustomerKey) as total_customers
from customers;

/*Total Customers by Countries*/
select country, count(CustomerKey) as total_customer
from customers
group by country
order by total_customer desc;

/*Find customer by Gender*/
select Gender, count(CustomerKey) as total_customers
from customers
group by Gender;

/*total sub-category by category*/
select Category, count(SubcategoryKey) as total_subcategory
from products
group by Category
order by total_subcategory desc;

/*total category by sub-category*/
select Subcategory, count(CategoryKey) as total_category
from products
group by Subcategory
order by total_category desc;

/*Total Product by category*/
select Category, count(ProductKey) as total_products
from products
group by Category
order by total_products desc;

/*avg cost in each category*/
select Category, round(avg(`Unit Cost USD`),1) as avg_cost
from products
group by Category
order by avg_cost desc;